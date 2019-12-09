#Authors: Jouya, Anam
# update this if needed
path = "C:/Users/jooya/OneDrive/Desktop/College/Fall 2019/Computational Creativity/Musical-Metacreation/Audio files"

#Intro
sample :ambi_choir, rate: 0.3
sample :ambi_piano, rate: 0.4
sample :ambi_dark_woosh, rate: 0.4
sample path+"/S1.wav", amp: 10
sleep 5
sample :ambi_lunar_land, rate: -1, amp: 0.4
sample :ambi_choir, rate: 0.3
sample :ambi_piano, rate: 0.4
sample :ambi_dark_woosh, rate: 0.4
sample path+"/S2.wav", amp: 10
sleep 6

Switch = 0
live_loop :audio_files do
  choice = choose([(path+"/AR2.wav"),(path+"/AR4.wav"),(path+"/AR5.wav"),(path+"/AR6.wav"),(path+"/AR7.wav"),(path+"/AR8.wav"),(path+"/AR9.wav"),(path+"/AR10.wav"),(path+"/JR1.wav"),(path+"/JR3.wav"),(path+"/JR4.wav"),(path+"/JR5.wav"),(path+"/JR6.wav"),(path+"/JR7.wav"),(path+"/JR8.wav"),(path+"/JR9.wav"),(path+"/JR10.wav"),(path+"/JR11.wav")])
  #Jouya's lines
  if (choice == (path+"/JR1.wav")) or (choice == (path+"/JR3.wav")) or (choice == (path+"/JR4.wav")) or (choice == (path+"/JR5.wav")) or (choice == (path+"/JR6.wav")) or (choice == (path+"/JR7.wav")) or (choice == (path+"/JR8.wav")) or (choice == (path+"/JR9.wav")) or (choice == (path+"/JR10.wav")) or (choice == (path+"/JR11.wav"))
    Switch = 0
  end
  # Anam's lines
  if (choice == (path+"/AR2.wav")) or (choice == (path+"/AR4.wav")) or (choice == (path+"/AR5.wav")) or (choice == (path+"/AR6.wav")) or (choice == (path+"/AR7.wav")) or (choice ==(path+"/AR8.wav")) or (choice == (path+"/AR9.wav")) or (choice == (path+"/AR10.wav"))
    Switch = 1
  end
  if (Switch == 1)
    sample :ambi_lunar_land, rate: -1, amp: 0.7
    sample choice, amp: 10
    sleep 8
  else
    sample :ambi_glass_hum, rate: 0.5 , amp: 0.7
    sample choice, amp: 10
    sleep 8
  end
end
live_loop :calm do
  sample :ambi_choir, rate: 0.3, amp: 0.7
  sample :ambi_piano, rate: 0.4, amp: 0.7
  sample :ambi_dark_woosh, rate: 0.4, amp: 0.7
  sleep 1
end

