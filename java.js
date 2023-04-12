var firstClassInput = document.querySelector('#first-class-input');
var economyClassInput = document.querySelector('#economy-class-input');
var increase1 = document.querySelector('#fc-incrementor');
var increase2 = document.querySelector('#ec-incrementor');
var decrease1 = document.querySelector('#fc-decreamentor');
var decrease2 = document.querySelector('#ec-decreamentor');
var fcPrice = document.getElementById('phonePrice');
var ecPrice = document.getElementById('coverPrice');
var subTotal = document.getElementById('subTotal');
var tax = document.getElementById('tax');
var total = document.getElementById('total');

function increment(incrementor, count) {
    incrementor.addEventListener('click', function () {
        var currentValue = Number(count.value);
        currentValue += 1;
        count.value = currentValue;
        // Subtotal
        updatePrices()
    })
}

function decrement(decrementor, count) {
    decrementor.addEventListener('click', function () {
        var currentValue = Number(count.value);
        console.log(currentValue)
        if (count.value > 0) {
            currentValue -= 1;
        count.value = currentValue;
        }
        // Subtotal
        updatePrices()
    })
}

// Update Prices 

function updatePrices(){
    var subTotalNum = (Number(firstClassInput.value) * 150) + (Number(economyClassInput.value) *  100);
        subTotal.innerText = subTotalNum;
        var taxCount = subTotalNum * 0.1;
        tax.innerText = taxCount;
        var totalCost = subTotalNum + taxCount;
        total.innerText = totalCost;;
}
function show(){
   showTotal = Number(total.innerText);
   if(showTotal > 0){
    alert('Your Booking is successful and your cost is '+ total.innerText)
   } else{
       alert('Booking failed . Select 1 ticket please')
   }
    
}
increment(increase1, firstClassInput);
increment(increase2, economyClassInput);
decrement(decrease1, firstClassInput);
decrement(decrease2, economyClassInput);
