/atom/movable
	var/list/voice_effect

/atom/movable/Initialize(mapload, ...)
	. = ..()
	if(voice_filter && !voice_effect)
		CRASH("[src] has assigned var/voice_filter = ([voice_filter]), but is missing var/voice_effect!")
	if(voice_effect && !length(voice_effect))
		CRASH("[src] has assigned var/voice_effect = ([voice_effect]), but it is not a list()!")

/obj/item/clothing/mask/gas
	voice_effect = list(/datum/singleton/sound_effect/gasmask)

/obj/item/clothing/mask/gas/clown_hat
	voice_effect = null

/datum/singleton/sound_effect/gasmask
	suffix = "_gasmask"
	ffmpeg_arguments = "lowpass=f=750,volume=2"
	priority = TTS_SOUND_EFFECT_PRIORITY_MASK

/obj/item/clothing/mask/gas/sechailer
	voice_effect = list(/datum/singleton/sound_effect/sechailer)

/datum/singleton/sound_effect/sechailer
	suffix = "_sechailer"
	ffmpeg_arguments = @{"[0:a] asetrate=24000*0.7,aresample=16000,atempo=1/0.7,lowshelf=g=-20:f=500,highpass=f=500,aphaser=in_gain=1:out_gain=1:delay=3.0:decay=0.4:speed=0.5:type=t [out]; [out]atempo=1.2,volume=15dB [final]; anoisesrc=a=0.01:d=60 [noise]; [final][noise] amix=duration=shortest"}
	priority = TTS_SOUND_EFFECT_PRIORITY_MASK

/obj/item/organ/tongue/inky
	voice_effect = list(/datum/singleton/sound_effect/tongue_inky)

/datum/singleton/sound_effect/tongue_inky
	suffix = "_tongueinky"
	ffmpeg_arguments = "\
	rubberband=pitch='\
		2'\
	:formant=preserved,\
	highpass=f=1000:t=s:w=24,\
	equalizer=f=1200:g=15,\
	equalizer=f=4350:g=-15,\
	highshelf=f=870:g=1,\
	afftfilt=\
		real='\
			st(0,(b+0.5)/nb*sr);\
			st(1,3000+1500*sin(9.3*2*PI*pts));\
			st(2,ld(0)/ld(1));\
			re*(1-ld(2)^2+2*gauss(log(ld(2)+1)))'\
		:imag='\
			st(0,(b+0.5)/nb*sr);\
			st(1,3000+1500*sin(9.3*2*PI*pts));\
			st(2,ld(0)/ld(1));\
			im*(1-ld(2)^2+2*gauss(log(ld(2)+1)))'\
		:win_size=1024"
	priority = TTS_SOUND_EFFECT_PRIORITY_TONGUE

/obj/item/survivalcapsule/fishing
	voice_effect = list(/datum/singleton/sound_effect/fishing_capsule)

/datum/singleton/sound_effect/fishing_capsule
	suffix = "_fishingcapsule"
	ffmpeg_arguments = "alimiter=0.9,acompressor=threshold=0.3:ratio=40:attack=15:release=350:makeup=1.5,highpass=f=1000,rubberband=pitch=1.5"

/mob/living/basic/parrot/poly/Initialize(mapload)
	. = ..()
	if(voice_filter)
		voice_effect = list(/datum/singleton/sound_effect/poly)

/datum/singleton/sound_effect/poly
	suffix = "_poly"
	ffmpeg_arguments = "rubberband=pitch=1.5"
	priority = TTS_SOUND_EFFECT_PRIORITY_TONGUE

/obj/item/organ/tongue/lizard
	voice_effect = list(/datum/singleton/sound_effect/tongue_lizard)

/datum/singleton/sound_effect/tongue_lizard
	suffix = "_tonguelizard"
	ffmpeg_arguments = @{"[0:a] asplit [out0][out2]; [out0] asetrate=24000*0.9,aresample=24000,atempo=1/0.9,aformat=channel_layouts=mono,volume=0.2 [p0]; [out2] asetrate=24000*1.1,aresample=24000,atempo=1/1.1,aformat=channel_layouts=mono,volume=0.2[p2]; [p0][0][p2] amix=inputs=3"}
	priority = TTS_SOUND_EFFECT_PRIORITY_TONGUE

/obj/item/organ/tongue/alien
	voice_effect = list(/datum/singleton/sound_effect/tongue_alien)

/datum/singleton/sound_effect/tongue_alien
	suffix = "_tonguealien"
	ffmpeg_arguments = @{"[0:a] asplit [out0][out2]; [out0] asetrate=24000*0.8,aresample=24000,atempo=1/0.8,aformat=channel_layouts=mono [p0]; [out2] asetrate=24000*1.2,aresample=24000,atempo=1/1.2,aformat=channel_layouts=mono[p2]; [p0][0][p2] amix=inputs=3"}
	priority = TTS_SOUND_EFFECT_PRIORITY_TONGUE

/obj/item/organ/tongue/robot
	voice_effect = list(/datum/singleton/sound_effect/tongue_robot)

/datum/singleton/sound_effect/tongue_robot
	suffix = "_tonguerobot"
	ffmpeg_arguments = "alimiter=0.9,acompressor=threshold=0.2:ratio=20:attack=10:release=50:makeup=2,highpass=f=1000"
	priority = TTS_SOUND_EFFECT_PRIORITY_TONGUE

/obj/item/organ/tongue/snail
	voice_effect = list(/datum/singleton/sound_effect/tongue_snail)

/datum/singleton/sound_effect/tongue_snail
	suffix = "_tonguesnail"
	ffmpeg_arguments = "atempo=0.5"
	priority = TTS_SOUND_EFFECT_PRIORITY_TONGUE

/obj/item/organ/tongue/ethereal
	voice_effect = list(/datum/singleton/sound_effect/tongue_ethereal)

/datum/singleton/sound_effect/tongue_ethereal
	suffix = "_tongueethereal"
	ffmpeg_arguments = @{"[0:a] asplit [out0][out2]; [out0] asetrate=24000*0.99,aresample=24000,volume=0.3 [p0]; [p0][out2] amix=inputs=2"}
	priority = TTS_SOUND_EFFECT_PRIORITY_TONGUE

/obj/machinery/vending
	voice_effect = list(/datum/singleton/sound_effect/vending)

/datum/singleton/sound_effect/vending
	suffix = "_vending"
	ffmpeg_arguments = "alimiter=0.9,acompressor=threshold=0.2:ratio=20:attack=10:release=50:makeup=2,highpass=f=1000"
	priority = TTS_SOUND_EFFECT_PRIORITY_TONGUE
