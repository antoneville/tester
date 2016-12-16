package controllers;

import play.api.Environment;
import play.mvc.*;
import play.data.*;
import play.db.ebean.Transactional;

import javax.inject.Inject;

import views.html.*;

import models.*;
/**
 * This controller contains an action to handle HTTP requests
 * to the application's home page.
 */
public class HomeController extends Controller {

    /**
     * An action that renders an HTML page with a welcome message.
     * The configuration in the <code>routes</code> file means that
     * this method will be called when the application receives a
     * <code>GET</code> request with a path of <code>/</code>.
     */

    private FormFactory formFactory;

    @Inject
    private HomeController(FormFactory f){
    	this.formFactory = f;
    }
    

     public Result Items(Long cat) {

        // Get list of all categories in ascending order
        List<Category> categoriesList = Category.findAll();
        List<Product> productsList = new ArrayList<Product>();

        if (cat == 0) {
            // Get list of all categories in ascending order
            productsList = Product.findAll();
        }
        else {
            // Get products for selected category
            // Find category first then extract products for that cat.
            productsList = Category.find.ref(cat).getProducts();
        }

        return ok(products.render(productsList, categoriesList, getUserFromSession()));
    }


    public Result Amy() {
	return ok(Amy.render());
    }

    public Result Services() {
	return ok(Services.render());
    }

    public Result Items() {
	return ok(Items.render());
    }

    public Result contact() {
	return ok(contact.render());
    }

    /**
    * Non Home Page Files
    * SERVICES
    */

    public Result Weddings() {
	return ok(Weddings.render());
    }
    
    public Result Events() {
	return ok(Events.render());
    }

    public Result SpecialFX() {
   	return ok(SpecialFX.render());
    } 

	/*ADMIN*/
	public Result addProductSubmit() {

        // Create a product form object (to hold submitted data)
        // 'Bind' the object to the submitted form (this copies the filled form)
        Form<Product> newProductForm = formFactory.form(Product.class).bindFromRequest();

        // Check for errors (based on Product class annotations)
        if(newProductForm.hasErrors()) {
            // Display the form again
            return badRequest(addProduct.render(newProductForm));
        }

        // Extract the product from the form object
        Product p = newProductForm.get();

	if(newProduct.getId() == null) {
		 newProduct.save();
}
	else if (newProduct.getId() != null) {
		newProduct.update();
}


        p.save();
        

        // Set a success message in temporary flash
        // for display in return view
        flash("success", "Product " + p.getName() + " has been created/ updated");

        // Redirect to the admin home
        return redirect(controllers.routes.HomeController.items());
    }
	  @Security.Authenticated(Secured.class)
       // @Transactional
        public Result deleteProduct(Long id) {

        // find product by id and call delete method
        Product.find.ref(id).delete();
        // Add message to flash session
        flash("success", "Product has been deleted");

        // Redirect to products page
        return redirect(routes.HomeController.items());
    }

	@Transactional
	public Result updateProduct(Long id) {

		Product p;
		Form<Product> productForm;

		try {	
			p = Product.find.byId(id);


			productForm = formFactory.form(Product.class).fill(p);

}	catch(Exception ex) {
		return badRequest("error");
}

	return ok(addProduct.render(productForm));

}


	 List<Category> categoriesList = Category.findAll();
        List<Product> productsList = new ArrayList<Product>();


	    private User getUserFromSession() {
        return User.getUserById(session().get("email"));
    }
  

}
