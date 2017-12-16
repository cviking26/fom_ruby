silben = %w[blend denta cur odo med denta]
silben.uniq!

anzahlName = 12
anzahlSilben = 3

vorschlaege = []

anzahlName.times do
  name = []
  name << silben.sample until name.size == anzahlSilben
  vorschlaege << name.uniq.join(' - ').capitalize
end

puts vorschlaege