Category.create!([
  {name: "Book's"},
  {name: "Merch"}
])
Supplier.create!([
  {name: "John's Publishing", email: "jp@gmail.com", phone_number: "111-2222"},
  {name: "Mother's Crafts", email: "mc@gmail.com", phone_number: "333-4444"}
])
Product.create!([
  {name: "Moon Called", price: "8.0", description: "A newly formed werewolf shows up at Mercedes “Mercy” Thompson’s garage. Mercy recognizes the teenager as a runaway. He introduces himself as Mac and asks Mercy for a job. Mercy agrees to let him work for her. She notes to herself that this is a bad idea because while she understands how newly formed werewolves should adjust to their wolf side, she is not an alpha werewolf who can guide Mac through this transition in his life. In fact, she’s a coyote skinwalker of Native American descent. She sends Mac to go clean himself up and eat.", inventory: 4, supplier_id: 1},
  {name: "The Boxes", price: "5.0", description: "Annie's Uncle Marco goes on one of his mysterious trips, leaving her in charge of two sealed boxes on one condition: she must not open either one while he is away. But she is tempted...and soon she has unleashed the unspeakable.", inventory: 2, supplier_id: 1},
  {name: "Old Man's War", price: "20.0", description: "The first installment of the Old Man's War series. Written by John Scalzi.", inventory: 10, supplier_id: 1},
  {name: "Book", price: "5.0", description: "An intro-level book on making books.", inventory: 3, supplier_id: 1},
  {name: "Bookmarks", price: "0.0", description: "A placeholder so you'll never lose your place in a book.", inventory: 7, supplier_id: 2},
  {name: "reading glasses", price: "7.0", description: "Glasses to help you read! For when your eyes just aren't good enough.", inventory: 5, supplier_id: 2},
  {name: "Stickers", price: "1.0", description: "stickers to plaster your cases and show off your nerdy nature.", inventory: 5, supplier_id: 2},
  {name: "rubber duck", price: "5.0", description: "your portable therapist and counsleor for when your code just doesn't work like they used to.", inventory: 30, supplier_id: 2}
])
Order.create!([
  {product_id: 1, user_id: 1, quantity: 3, subtotal: "1.0", tax: "2.0", total: "3.0"},
  {product_id: 3, user_id: 2, quantity: 3, subtotal: "1.0", tax: "2.0", total: "3.0"},
  {product_id: 3, user_id: 2, quantity: 3, subtotal: "0.0", tax: "2.0", total: "3.0"},
  {product_id: 4, user_id: 2, quantity: 3, subtotal: "7.0", tax: "2.0", total: "3.0"},
  {product_id: 4, user_id: 2, quantity: 3, subtotal: "21.0", tax: "2.1", total: "23.1"},
  {product_id: 4, user_id: 2, quantity: 3, subtotal: "21.0", tax: "2.1", total: "23.1"},
  {product_id: 4, user_id: 2, quantity: 3, subtotal: "21.0", tax: "2.1", total: "23.1"},
  {product_id: 4, user_id: 2, quantity: 3, subtotal: "21.0", tax: "2.1", total: "23.1"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 6, category_id: 1},
  {product_id: 7, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 8, category_id: 2},
  {product_id: 10, category_id: 2},
  {product_id: 4, category_id: 1},
  {product_id: 4, category_id: 2}
])
User.create!([
  {name: "Lebowski", email: "His-Dudeness@gmail.com", password_digest: "$2a$12$JC7G2iUx106J5oeww9Wolesra68SEbYwSDx9WoA/RsF3JnLaZdFzi", admin: 0},
  {name: "Admin", email: "Admin@gmail.com", password_digest: "$2a$12$nWDvDkgGi.rYcqGls1Q.B.446yKrA2j.IrMm78QRw4AMaYfxwN546", admin: 1}
])
