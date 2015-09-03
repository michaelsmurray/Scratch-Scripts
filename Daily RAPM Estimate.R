## Basketball Stuff
# Boxscores

setwd("C:/Users/murrmi04/Downloads")
bs.1314 <- read.csv("traditional_boxscores (1).csv",header=FALSE)
head(bs.1314)
colnames(bs.1314) <- c("GameID","Team","Team.Abv","Team.City","PlayerID","Player.Name",
                       "Start.Pos","Comment","Min","FGM","FGA","FG_PCT","FG3M","FG3A","FG3.PCT","FTM","FTA","FT.PCT",
                       "OREB","DREB","TRB","AST","STL","BLK","TO","PF","PTS","PLUS.MINUS")

## Calculate DRE
## Convert minutes from Factor
## Convert to per 100 posessions
### Nylon Unavailable, possible hardcode 

a <- bs.1314
a$DRE <- a$PTS + .2*a$TRB + 1.7*a$STL + .535*a$BLK + .5*a$AST -.9*a$FGA -
  .35*a$FTA - 1.4*a$TO - .136*a$Min 