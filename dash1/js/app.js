const btn = document.querySelector('.talk');
const content = document.querySelector('.content');

function speak(sentence) {
    const text_speak = new SpeechSynthesisUtterance(sentence);

    text_speak.rate = 1;
    text_speak.pitch = 1;

    window.speechSynthesis.speak(text_speak);
}

function wishMe() {
    var day = new Date();
    var hr = day.getHours();

    if(hr >= 0 && hr < 12) {
        speak("Good Morning");
    }

    else if(hr == 12) {
        speak("Good Afternoon");
    }

    else if(hr > 12 && hr <= 17) {
        speak("Good Afternoon");
    }

    else {
        speak("Good Evening");
    }
}

window.addEventListener('load', ()=>{
    speak("Activating ASH");
    speak("Welcome to Ash Digital Assistant");
    wishMe();
})

const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
const recognition = new SpeechRecognition();

recognition.onresult = (event) => {
    const current = event.resultIndex;
    const transcript = event.results[current][0].transcript;
    content.textContent = transcript;
    speakThis(transcript.toLowerCase());
}

btn.addEventListener('click', ()=>{
    recognition.start();
})

function speakThis(message) {
    const speech = new SpeechSynthesisUtterance();

    speech.text = "I did not understand what you said please try again";

    if(message.includes('hey') || message.includes('hello')) {
        const finalText = "Hi I'm Ash. Welcome to the E-Academic Advisory system. If you want to know more about me and how I work with the entire system. Say description";
        speech.text = finalText;
    }

    else if(message.includes('description')) {
        const finalText = "The E-Academic System is designed to assist Ashesi students with easy navigation of courses pertaining to their majors and current academic standings. It utilizes information from each student's data to tailor usage of the platform to students' best interests.";
        speech.text = finalText;
    }

    else if(message.includes('your name') || message.includes('name')) {
        const finalText = "My name is Ash";
        speech.text = finalText;
    }

    else if(message.includes('thank you') || message.includes('thanks')) {
        const finalText = "You are welcome. Have a good day";
        speech.text = finalText;
    }

    else if(message.includes('view curriculum')) {
        window.open("https://www.ashesi.edu.gh/academics/programmes/computer-science/curriculum.html", "_blank");
        const finalText = "Opening the Ashesi website to view current Computer Science curriculum.";
        speech.text = finalText;
    }

    else if(message.includes('display electives')) {
        window.open("http://ash-student.herokuapp.com/dash1/electives.php", "_blank");
        const finalText = "Opening electives panel.";
        speech.text = finalText;
    }
    else if(message.includes('log out') || message.includes('sign out')) {
        window.open("http://ash-student.herokuapp.com/logout.php", "_self");
        const finalText = "Logging out.";
        speech.text = finalText;
    }
    else if(message.includes('camu') ) {
        window.open("https://www.mycamu.com/#/");
        const finalText = "Opening mycamu.";
        speech.text = finalText;
    }
    else if(message.includes('track electives')) {
        window.open("http://ash-student.herokuapp.com/dash1/home.php", "_blank");
        const finalText = "Opening dashboard panel.";
        speech.text = finalText;
    }

    else if(message.includes('what is') || message.includes('who is') || message.includes('what are')) {
        window.open(`https://www.google.com/search?q=${message.replace(" ", "+")}`, "_blank");
        const finalText = "This is what i found on internet regarding " + message + "You can also add wikipedia to a phrase to search for something on Wikipedia.";
        speech.text = finalText;
    }

    else if(message.includes('wikipedia')) {
        window.open(`https://en.wikipedia.org/wiki/${message.replace("wikipedia", "")}`, "_blank");
        const finalText = "This is what i found on wikipedia regarding " + message;
        speech.text = finalText;
    }

    else if(message.includes('time')) {
        const time = new Date().toLocaleString(undefined, {hour: "numeric", minute: "numeric"})
        const finalText = time;
        speech.text = finalText;
    }

    else if(message.includes('date')) {
        const date = new Date().toLocaleString(undefined, {month: "short", day: "numeric"})
        const finalText = date;
        speech.text = finalText;
    }

    else {
        window.open(`https://www.google.com/search?q=${message.replace(" ", "+")}`, "_blank");
        const finalText = "I found some information for " + message + " on google";
        speech.text = finalText;
    }

    speech.volume = 1;
    speech.pitch = 1;
    speech.rate = 1;

    window.speechSynthesis.speak(speech);
}