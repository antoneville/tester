# --- Sample dataset

# --- !Ups

insert into category (catId,catName) values ( 1,'Eyes' );
insert into category (catId,catName) values ( 2,'Face' );
insert into category (catId,catName) values ( 3,'Lips' );

insert into product (prodId,catId,prodType,ProdName,colour,description,stock,price,rating) values ( 1,1,'Eye Shadow','All That Glitters','Beige','Four new lustrous cream-like eye shadow shades offer extreme pearlescence and versatility of finish. Provides sheer-to-moderate buildable coverage and a dimensional finish. The dual-use formula can be applied dry for a sparkling more translucent look, or wet for glossy saturated colour with high shine. The smooth, non-dusty formula is easy to blend, giving extreme adherence to skin. Pressed Pigment is delicate. Please handle with care. Special packaging features the Star Trek logo in metallic silver.',50,17.50,'4.5/5' );
insert into product (prodId,catId,prodType,ProdName,colour,description,stock,price,rating) values ( 2,1,'Eye Liner','Prunela','Purple','A pencil designed for shaping, lining or filling in the lip. Lip Pencils have a smooth, creamy texture that is perfect for 	outlining lips or colouring them in. They are available in a wide 	selection of colours that each work well with many different lipstick shades.'50,13.00,'5/5' );
insert into product (prodId,catId,prodType,ProdName,colour,description,stock,price,rating) values ( 3,1,'Mascara','Extreme Black','Black','Lashes take on superb scale, structure and sweep with In Extreme Dimension 
Waterproof, M•A•Cs lightweight, whipped mascara that saturates from root to tip, 
now in a waterproof formula. Enhancing volume, extending length, creating curl and 
staying put to the extreme, these highly defined lashes are clump-resistant, 
non-flaking and non-smudging – and can now withstand moisture of any kind.',50,19.00,'4.2/5' );

insert into product (prodId,catId,prodType,ProdName,colour,description,stock,price,rating) values ( 4,2,'Lip Stick','Velvet Teddy','Deep Tone Beige','A lipstick with hundreds of hues. The iconic product that made M·A·C famous. Formulated to shade, define and showcase the lips. Hundreds of hues, high-fashion textures. The iconic product that made M·A·C famous.',50,17.00,'4.6/5' );
insert into product (prodId,catId,prodType,ProdName,colour,description,stock,price,rating) values ( 5,2,'Lip Pencil','Candy Yum-Yum','Neon Pink','A pencil designed for shaping, lining or filling in the lip. Lip Pencils have a smooth, creamy texture that is perfect for outlining lips or colouring them in. They are available in a wide selection of colours that each work well with many different lipstick shades.',50,99.00,'4.7/5' );
insert into product (prodId,catId,prodType,ProdName,colour,description,stock,price,rating) values ( 6,2,'Lip Gloss','Candy Yum-Yum','Neon Pink','A unique lip gloss available in a wide variety of colours that can create a high-gloss, glass-like finish or a subtle sheen. Designed to be worn on its own,over lip pencil or lipstick, its the perfect product for creating shine that lasts. Its pigmented, very shiny and can impart subtle or dramatic colour. It contains jojoba oil to help soften and condition the lips.
',50,16.00,'4.5/5' );

insert into product (prodId,catId,prodType,ProdName,colour,description,stock,price,rating) values ( 7,3,'Foundation','
STUDIO FIX FLUID SPF 15','N4','An oil-controlling formula that offers a natural matte finish with medium to full coverage. A modern foundation that combines a natural matte finish and medium to full buildable coverage with broad spectrum UVA/UVB SPF 15/PA++ protection. Applies, builds and blends easily and evenly. Comfortable and long wearing, it helps minimize the appearance of pores and imperfections, giving skin a smoother, more flawless look and finish.',50,22.00,'4.2/5' );
insert into product (prodId,catId,prodType,ProdName,colour,description,stock,price,rating) values ( 8,3,'Concealer','STUDIO FIX PERFECTING STICK','N25','A chubby twist-up concealer pencil with a precise rounded tip.A chubby twist-up concealer pencil that hides dark circles, blemishes and other skin imperfections thanks to its precise rounded tip and propel/repel abilities. The formula is super-blendable with medium-buildable coverage, and sets to a 
natural matte finish that feels powdery and appears seamless on skin. Its portability and mess-free application make it the perfect product for on-the-go touch-ups.
',50,16.00,'4.5/5' );
insert into product (prodId,catId,prodType,ProdName,colour,description,stock,price,rating) values ( 9,3,'Powder Blush','News Flash','Red orange with pearl','A liquid-powder highlighter that gives a luminous, well-defined finish. Extra Dimension Skinfinish adds the perfect glow to skin. The liquid-powder 
highlighter, with prismatic reflections, is designed to sculpt and highlight your 
face, leaving a luminous, well-defined finish. The creamy powder formula lasts up 
to ten hours.',50,13.00,'4.9/5' );


insert into user (email,name,password,role) values ( 'admin@products.com', 'Tony Admin', 'mayo', 'admin' );
insert into user (email,name,password,role) values ( 'customer@products.com', 'Ceiran Customer', 'cavan', 'customer' );
Chat conversation end

