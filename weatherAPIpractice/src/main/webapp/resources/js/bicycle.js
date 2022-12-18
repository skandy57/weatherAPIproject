const API_KEY = "89298819f5317629120c19e8ad9c452b"; // add your API KEY
const COORDS = 'coords';

const weatherInfo = document.querySelector('.weatherInfo');
const weatherIconImg = document.querySelector('.weatherIcon');
const score = document.querySelector('.score');
const text = document.querySelector('.text');


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
function getBikingScore(temperature, weatherDescription) {
    if (temperature < 10) {
        return 1;
    } else if (temperature >= 10 && temperature < 20) {
        if (weatherDescription.includes("rain") || weatherDescription.includes("snow")) {
            return 1;
        } else if (weatherDescription.includes("cloud")) {
            return 2;
        } else {
            return 3;
        }
    } else if (temperature >= 20 && temperature < 30) {
        if (weatherDescription.includes("rain") || weatherDescription.includes("snow")) {
            return 1;
        } else if (weatherDescription.includes("cloud")) {
            return 2;
        } else {
            return 4;
        }
    } else if (temperature >= 30) {
        return 4;
    }
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
       
        
        // Score the biking conditions based on temperature and weather
        var bikingScore = getBikingScore(temperature, weatherDescription);
        
        // Display a message to the user based on the score
        if (bikingScore === 1) {
        	weatherText=("It is not a good day to go biking.");
        } else if (bikingScore === 2) {
        	weatherText=("It is not the best day to go biking, but you can still go if you are prepared.");
        } else if (bikingScore === 3) {
        	weatherText=("It is a good day to go biking!");
        } else{
        	weatherText=("It is a great day to go biking!");
        }
        score.textContent=bikingScore;
        text.textContent=weatherText;
        
    })
    .catch((error) => console.log("error:", error));
}

init();