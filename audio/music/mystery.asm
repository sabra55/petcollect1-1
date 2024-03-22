; Music_Mystery
; 2024 Crystalmoon
; A mystery-type custom song

Music_Mystery:
	channel_count 4
	channel 1, Music_Mystery_Ch1
	channel 2, Music_Mystery_Ch2
	channel 3, Music_Mystery_Ch3
	channel 4, Music_Mystery_Ch4

Music_Mystery_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	volume_envelope 15, 3
	octave 3
.loop1:
	volume_envelope 15, 1
	vibrato 0, 15, 15
	duty_cycle 3
	note C#, 2
	note E_, 2
	note G#, 2
	octave 4
	note C#, 2
	octave 3
	note G#, 2
	note E_, 2
	note C#, 2
	note E_, 2
	note G#, 2
	octave 4
	note C#, 2
	octave 3
	note G#, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note F#, 2
	note B_, 2
	note F#, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note F#, 2
	note B_, 2
	note F#, 2
	note D_, 2
	sound_loop 5, .loop1
	note_type 12, 15, 3
	sound_loop 0, .mainLoop

Music_Mystery_Ch2:
	note_type 12, 15, 8
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	note_type 12, 15, 8
	sound_loop 0, .mainLoop

Music_Mystery_Ch3:
	note_type 12, 1, 0
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	octave 4
	volume_envelope 1, 2
	note E_, 16
	note E_, 8
	octave 3
	note B_, 16
	note B_, 8
	octave 4
	note E_, 16
	note E_, 6
	note F#, 2
	octave 3
	note B_, 8
	note B_, 16
	volume_envelope 1, 4
	note C#, 2
	note E_, 2
	note G#, 2
	octave 4
	note C#, 2
	octave 3
	note G#, 2
	note E_, 2
	note C#, 2
	note E_, 2
	note G#, 2
	octave 4
	note C#, 2
	octave 3
	note G#, 2
	note E_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note F#, 2
	note B_, 2
	note F#, 2
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note D_, 2
	note F#, 2
	note B_, 2
	note F#, 2
	note D_, 2
	note_type 12, 1, 0
	sound_loop 0, .mainLoop

Music_Mystery_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	drum_speed 12
	sound_loop 0, .mainLoop
