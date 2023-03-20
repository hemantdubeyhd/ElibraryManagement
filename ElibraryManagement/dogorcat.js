
function ChangeImageDog()

{
    //alert("Bow Bow");
    localStorage.setItem("pet", "dog");
    let displayimage = document.getElementById('image');
    displayimage.src = 'imgs/pg2Dog.jpg';
                    
}
function ChangeImageCat()
{
    //alert("Meow Meow");
    localStorage.setItem("pet", "cat");
    let displayimage1 = document.getElementById('image');
    displayimage1.src = 'imgs/cat1.jpg';
}

const flag = localStorage.getItem("pet");
if (flag == "cat") {

    let displayimg = document.getElementById('image');
    displayimg.src = 'imgs/cat1.jpg';

}
if (flag == "dog")
{
    let displayimg1 = document.getElementById('image');
    
    displayimg1.src = 'imgs/pg2Dog.jpg';
}
