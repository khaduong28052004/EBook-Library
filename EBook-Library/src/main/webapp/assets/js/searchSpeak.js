document.addEventListener("DOMContentLoaded", function() {
	var message = document.querySelector('#message');
	var recordButton = document.getElementById('recordButton');
	var recordButton2 = document.getElementById('recordButton2');
	var btnPOST = document.getElementById('btnPOST');
	var SpeechRecognition = SpeechRecognition || webkitSpeechRecognition;
	var SpeechGrammarList = SpeechGrammarList || webkitSpeechGrammarList;
	var grammar = '#JSGF V1.0;';

	var recognition = new SpeechRecognition();
	var speechRecognitionList = new SpeechGrammarList();
	speechRecognitionList.addFromString(grammar, 1);
	recognition.grammars = speechRecognitionList;
	recognition.lang = 'vi-VN';
	recognition.interimResults = false;

	recognition.onresult = function(event) {
		var lastResult = event.results.length - 1;
		var content = event.results[lastResult][0].transcript;
		message.textContent = content + '.';
		recordButton2.hidden = true;
	};

	recognition.onspeechend = function() {
		if (message.textContent === 'Đang nghe...') {
			message.textContent = 'Không nghe rỏ, vui lòng nói lại.';
		} else {
			btnPOST.click();
		}
		recognition.stop();
		recordButton.classList.remove('recording');
		recordButton.classList.add('stopped');
		recordButton2.hidden = false;
	};

	recognition.onerror = function(event) {
		message.textContent = 'Không nghe được: ';
		recordButton.classList.remove('recording');
		recordButton.classList.add('stopped');
		recordButton2.hidden = false;
	};

	document.querySelector('#btnTalk').addEventListener('click', function() {
		recognition.start();
		recordButton2.hidden = true;
		message.textContent = 'Đang nghe...';
	});
	recordButton2.addEventListener('click', function() {
		if (recordButton.classList.contains('recording')) {
			recognition.stop();
		} else {
			recognition.start();
			recordButton.classList.remove('stopped');
			recordButton2.hidden = true;
			message.textContent = 'Đang nghe...';
		}
		recordButton.classList.toggle('recording');
	})

	recordButton.addEventListener('click', function() {
		if (recordButton.classList.contains('recording')) {
			recognition.stop();
		} else {
			recognition.start();
			recordButton.classList.remove('stopped');
			recordButton2.hidden = true;
			message.textContent = 'Đang nghe...';
		}
		recordButton.classList.toggle('recording');
	});
	document.querySelector('#btnTalk').click();
});
