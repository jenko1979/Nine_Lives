#generate some toy data
words5 <- data.frame(id = 1:60, y = c('WORDS','TESTS','PEACH','APPLE','BEACH','CRAZY','DITCH','FARSE',
                                     'PENNY','WOULD','COULD','DREAM','MOVER','HOUSE','RIGHT','LIGHT',
                                     'PROBE','BRAIN','TRAIN','COACH','BOATS','TENTS','SPACE','ALIVE','DEATH','AMUSE',
                                     'ANGLE', 'WHERE','THERE','TIERS','TEARS','BEERS','MOUSE','ROUND','POUND',
                                     'LIGHT','RIGHT','TIGHT','SIGHT','KITES','ERASE','LIARS','CREST','LIONS',
                                     'CREAM','TINGE','TANGO','MANGO','PASTE','HASTE','PARKS','REACT','HOIST',
                                     'PARTY','CHORE','DELAY','TRUTH','ARROW','CATCH','DRONE'))
View(words5)

save(words5,file="words5.Rda")

#get a sample of 10
#samp <- sample(nrow(x),1)
#datax <- x[samp,2]
#View(datax)