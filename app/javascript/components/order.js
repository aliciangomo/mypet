const add = document.querySelector('.fa-plus');
const remove = document.querySelector('.fa-minus');
let product_quantity = document.querySelector('.product_quantity');
let product_price = document.querySelector('#product_price');
let total_price = document.querySelector('#total_price');
let form_quantity = document.querySelector('#order_item_quantity');
// console.log(product_quantity);
console.log(total_price);
console.log(product_price);
console.log(total_price.innerText);
console.log(product_price.innerText);

const setOrderQuantity = () => {
  let order_quantity = parseInt(product_quantity.innerText, 10);
  console.log(order_quantity);
  form_quantity.value = order_quantity;
  add.addEventListener('click', () => {
    order_quantity++;
    product_quantity.innerText = order_quantity;
    const price = parseInt(product_price.innerText, 10);
    console.log(price);
    total_price.innerText = order_quantity * price;
    console.log(total_price);
    // product_price.innerText = total_price;
    // console.log(product_price.innerText);
    // form_quantity.innerHTML = `<%= f.hidden_field :quantity, :id => "order_item_quantity"; value: ${order_quantity} %>`;
    form_quantity.value = order_quantity;
    console.log(form_quantity.value);
  });

  // `<input id="order_item_quantity" type="hidden" name="order_item[quantity]" value="${order_quantity}">`

  remove.addEventListener('click', () => {
    if (order_quantity > 1) {
    order_quantity--;
    product_quantity.innerText = order_quantity;
  }
    const price = parseInt(product_price.innerText, 10);
    console.log(price);
    total_price.innerText = order_quantity * price;
    console.log(total_price);
    // product_price.innerText = total_price;
    // console.log(product_price.innerText);
    // form_quantity.innerHTML = `<%= f.hidden_field :quantity, :id => "order_item_quantity"; value: ${order_quantity} %>`;
    form_quantity.value = order_quantity;
    console.log(form_quantity);
  });

    // // product_quantity.innerText = order_quantity;
    // const price = parseInt(product_price.innerText, 10);
    // console.log(price);
    // let total_price = order_quantity * price;
    // console.log(total_rice);
    // product_price.innerText = total_price;
    // console.log(product.price.innerText);
    // // form_quantity.innerHTML = `<%= f.hidden_field :quantity, :id => "order_item_quantity"; value: ${order_quantity} %>`;
    // form_quantity.value = order_quantity;
    // console.log(form_quantity.value);
}


export { setOrderQuantity }
