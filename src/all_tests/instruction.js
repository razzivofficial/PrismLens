let currentSlide = 0;
const slides = document.querySelector('.carousel-inner');
function showSlide() 
{
    const slideWidth = slides.clientWidth;
    slides.style.transform = `translateX(${-currentSlide * slideWidth}px)`;
}
function toggleAgree()
{
    const button = document.getElementById('nextbutton');
    const buttonText = button.innerText;
    currentSlide = (currentSlide + 1) % slides.children.length;
    console.log(currentSlide);
    if(currentSlide == 5)
    {
        button.innerText = "I'm ready";
    }
    if(currentSlide == 0)
    {
        window.location.href = 'next page.html';
    }
    showSlide();
}
function closemyModal()
{
    document.getElementById('myModal').style.display = 'none';
    document.getElementById('myDecision').style.display = 'block';
}
function openmyModel()
{
    document.getElementById('myModal').style.display = 'block';
    document.getElementById('myDecision').style.display = 'none';
}
function back()
{
    window.location.href = 'color-blindness-test.html';
}
