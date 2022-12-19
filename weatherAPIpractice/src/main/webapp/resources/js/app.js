const API_KEY = "89298819f5317629120c19e8ad9c452b"; //add your API KEY 
const COORDS = 'coords';

const weatherInfo = document.querySelector('.weatherInfo');
const weatherIconImg = document.querySelector('.weatherIcon');

function init() {
    askForCoords();
}

function askForCoords() {
    navigator.geolocation.getCurrentPosition(handleSuccess, handleError);
}

function handleSuccess(position) {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;
    const coordsObj = {
        latitude,
        longitude
    };
    getWeather(latitude, longitude);
}

function handleError() {
    console.log("위치에 접근 할 수 없습니다");
}

function getWeather(lat, lon) {
    fetch(`https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric&lang=kr`).then(function(response) {
        return response.json();
    })
    .then(function(json) {      
        const temperature = json.main.temp;
        const place = json.name;
        const weatherDescription = json.weather[0].description;
        const weatherIcon = json.weather[0].icon;
        const weatherIconAdrs = `http://openweathermap.org/img/wn/${weatherIcon}@2x.png`;
            
        weatherInfo.innerText = `${temperature} °C / @${place} / ${weatherDescription}`;
        weatherIconImg.setAttribute('src', weatherIconAdrs);
    })
    .catch((error) => console.log("error:", error));
}

init();


const toggleBtn = document.querySelector('.navbar__toggleBtn');
const menu = document.querySelector('.navbar__menu');
const sns = document.querySelector('.navbar__sns');

toggleBtn.addEventListener('click', () => {
        menu.classList.toggle('active');
        sns.classList.toggle('active');
});
const btn = document.getElementById('scroll-top-btn');

//handle the click event for the button
btn.addEventListener('click', event => {
 // scroll to the top of the page
 window.scrollTo({
     top: 0,
     behavior: 'smooth'
 });
});

//handle the scroll event for the window
window.addEventListener('scroll', event => {
 // show or hide the button based on the scroll position
 if (window.pageYOffset > 300) {
     btn.style.display = 'block';
 } else {
     btn.style.display = 'none';
 }
});