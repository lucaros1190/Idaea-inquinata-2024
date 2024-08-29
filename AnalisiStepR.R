

# Script to analyse the dataset of Idaea Inquinata life tables, file 
# 'IdaeaLifeTab.xlsx'
#
# Created by Luca Rossini on 7 November 2023
# Last update 8 December 2023
# E-mail: luca.rossini@unitus.it


# Acquisition of dataset and variables

library(readxl)

  # Store the file path - Just to not repeat

InputFile <- file.choose()

  # 15C

dataset_15 <- read_excel(InputFile, sheet = "15C", col_names = T, skip = 1,
                         na = "")

head(dataset_15)

Exp_15 <- as.factor(dataset_15$Exp...1)
DevTimeEgg_15 <- as.numeric(dataset_15$Egg_15...3)
DevTimeLarva_15 <- as.numeric(dataset_15$Larva_15...4)
DevTimePupa_15 <- as.numeric(dataset_15$Pupa_15...5)

  # 17C

dataset_17 <- read_excel(InputFile, sheet = "17C", col_names = T, skip = 1,
                         na = "")

head(dataset_17)

Exp_17 <- as.factor(dataset_17$Exp...1)
DevTimeEgg_17 <- as.numeric(dataset_17$Egg_17...3)
DevTimeLarva_17 <- as.numeric(dataset_17$Larva_17...4)
DevTimePupa_17 <- as.numeric(dataset_17$Pupa_17...5)

  # 18C

dataset_18 <- read_excel(InputFile, sheet = "18C", col_names = T, skip = 1,
                         na = "")

head(dataset_18)

Exp_18 <- as.factor(dataset_18$Exp...1)
DevTimeEgg_18 <- as.numeric(dataset_18$Egg_18...3)
DevTimeLarva_18 <- as.numeric(dataset_18$Larva_18...4)
DevTimePupa_18 <- as.numeric(dataset_18$Pupa_18...5)

  # 21C

dataset_21 <- read_excel(InputFile, sheet = "21C", col_names = T, skip = 1,
                         na = "")

head(dataset_21)

Exp_21 <- as.factor(dataset_21$Exp...1)
DevTimeEgg_21 <- as.numeric(dataset_21$Egg_21...3)
DevTimeLarva_21 <- as.numeric(dataset_21$Larva_21...4)
DevTimePupa_21 <- as.numeric(dataset_21$Pupa_21...5)

  # 24C

dataset_24 <- read_excel(InputFile, sheet = "24C", col_names = T, skip = 1,
                         na = "")

head(dataset_24)

Exp_24 <- as.factor(dataset_24$Exp...1)
DevTimeEgg_24 <- as.numeric(dataset_24$Egg_24...3)
DevTimeLarva_24 <- as.numeric(dataset_24$Larva_24...4)
DevTimePupa_24 <- as.numeric(dataset_24$Pupa_24...5)

  # 26C

dataset_26 <- read_excel(InputFile, sheet = "26C", col_names = T, skip = 1,
                         na = "")

head(dataset_26)

Exp_26 <- as.factor(dataset_26$Exp...1)
DevTimeEgg_26 <- as.numeric(dataset_26$Egg_26...3)
DevTimeLarva_26 <- as.numeric(dataset_26$Larva_26...4)
DevTimePupa_26 <- as.numeric(dataset_26$Pupa_26...5)

  # 29C

dataset_29 <- read_excel(InputFile, sheet = "29C", col_names = T, skip = 1,
                         na = "")

head(dataset_29)

Exp_29 <- as.factor(dataset_29$Exp...1)
DevTimeEgg_29 <- as.numeric(dataset_29$Egg_29...3)
DevTimeLarva_29 <- as.numeric(dataset_29$Larva_29...4)
DevTimePupa_29 <- as.numeric(dataset_29$Pupa_29...5)

  # 32C

dataset_32 <- read_excel(InputFile, sheet = "32C", col_names = T, skip = 1,
                         na = "")

head(dataset_32)

Exp_32 <- as.factor(dataset_32$Exp...1)
DevTimeEgg_32 <- as.numeric(dataset_32$Egg_32...3)
DevTimeLarva_32 <- as.numeric(dataset_32$Larva_32...4)
DevTimePupa_32 <- as.numeric(dataset_32$Pupa_32...5)

  # 34C

dataset_34 <- read_excel(InputFile, sheet = "34C", col_names = T, skip = 1,
                         na = "")

head(dataset_34)

Exp_34 <- as.factor(dataset_34$Exp...1)
DevTimeEgg_34 <- as.numeric(dataset_34$Egg_34...3)
DevTimeLarva_34 <- as.numeric(dataset_34$Larva_34...4)
DevTimePupa_34 <- as.numeric(dataset_34$Pupa_34...5)

  # 36C

dataset_36 <- read_excel(InputFile, sheet = "36C", col_names = T, skip = 1,
                         na = "")

head(dataset_36)

Exp_36 <- as.factor(dataset_36$Exp...1)
DevTimeEgg_36 <- as.numeric(dataset_36$Egg_36...3)
DevTimeLarva_36 <- as.numeric(dataset_36$Larva_36...4)
DevTimePupa_36 <- as.numeric(dataset_36$Pupa_36...5)


  # Check the levels - Just to be sure that there are all!

levels(Exp_15)
levels(Exp_17)
levels(Exp_18)
levels(Exp_21)
levels(Exp_24)
levels(Exp_26)
levels(Exp_29)
levels(Exp_32)
levels(Exp_34)
levels(Exp_36)


# LM to check the differences among the levels in each dataset

library(lme4)
library(MASS)

library(multcompView)
library(emmeans)

library(multcomp)

  # 15C

    # Egg 15C

GenLinEgg_15 <- lm(DevTimeEgg_15 ~ Exp_15, data=dataset_15)
summary(GenLinEgg_15)

      # Pairwise comparison 15 C

marginalEgg_15 = emmeans(GenLinEgg_15, ~ Exp_15 )
pairs(marginalEgg_15, adjust="bonferroni")

      # Letters of significance 15 C

lettereEgg_15 <- cld(marginalEgg_15, alpha=0.05, Letters=letters, 
                     adjust="bonferroni")
lettereEgg_15



    # 17C

      # Egg 17C

GenLinEgg_17 <- lm(DevTimeEgg_17 ~ Exp_17, data=dataset_17)
summary(GenLinEgg_17)

      # Pairwise comparison 17 C

marginalEgg_17 = emmeans(GenLinEgg_17, ~ Exp_17 )
pairs(marginalEgg_17, adjust="bonferroni")

      # Letters of significance 17 C

lettereEgg_17 <- cld(marginalEgg_17, alpha=0.05, Letters=letters, 
                     adjust="bonferroni")
lettereEgg_17



  # 21C

    # Egg 21C

GenLinEgg_21 <- lm(DevTimeEgg_21 ~ Exp_21, data=dataset_21)
summary(GenLinEgg_21)

      # Pairwise comparison Egg 21 C

marginalEgg_21 = emmeans(GenLinEgg_21, ~ Exp_21 )
pairs(marginalEgg_21, adjust="bonferroni")

      # Letters of significance Egg 21 C

lettereEgg_21 <- cld(marginalEgg_21, alpha=0.05, Letters=letters, 
                     adjust="bonferroni")
lettereEgg_21

    # Larva 21C

GenLinLarva_21 <- lm(DevTimeLarva_21 ~ Exp_21, data=dataset_21)
summary(GenLinLarva_21)

      # Pairwise comparison Larva 21 C

marginalLarva_21 = emmeans(GenLinLarva_21, ~ Exp_21 )
pairs(marginalLarva_21, adjust="bonferroni")

      # Letters of significance Larva 21 C

lettereLarva_21 <- cld(marginalLarva_21, alpha=0.05, Letters=letters, 
                       adjust="bonferroni")
lettereLarva_21

    # Pupa 21C

GenLinPupa_21 <- lm(DevTimePupa_21 ~ Exp_21, data=dataset_21)
summary(GenLinPupa_21)

    # Pairwise comparison Pupa 21 C

marginalPupa_21 = emmeans(GenLinPupa_21, ~ Exp_21 )
pairs(marginalPupa_21, adjust="bonferroni")

    # Letters of significance Pupa 21 C

letterePupa_21 <- cld(marginalPupa_21, alpha=0.05, Letters=letters, 
                      adjust="bonferroni")
letterePupa_21



  # 26C

    # Egg 26C

GenLinEgg_26 <- lm(DevTimeEgg_26 ~ Exp_26, data=dataset_26)
summary(GenLinEgg_26)

      # Pairwise comparison Egg 26 C

marginalEgg_26 = emmeans(GenLinEgg_26, ~ Exp_26 )
pairs(marginalEgg_26, adjust="bonferroni")

      # Letters of significance Egg 26 C

lettereEgg_26 <- cld(marginalEgg_26, alpha=0.05, Letters=letters, 
                     adjust="bonferroni")
lettereEgg_26

    # Larva 26C

GenLinLarva_26 <- lm(DevTimeLarva_26 ~ Exp_26, data=dataset_26)
summary(GenLinLarva_26)

      # Pairwise comparison Larva 26 C

marginalLarva_26 = emmeans(GenLinLarva_26, ~ Exp_26 )
pairs(marginalLarva_26, adjust="bonferroni")

      # Letters of significance Larva 26 C

lettereLarva_26 <- cld(marginalLarva_26, alpha=0.05, Letters=letters, 
                       adjust="bonferroni")
lettereLarva_26

    # Pupa 26C

GenLinPupa_26 <- lm(DevTimePupa_26 ~ Exp_26, data=dataset_26)
summary(GenLinPupa_26)

      # Pairwise comparison Pupa 26 C

marginalPupa_26 = emmeans(GenLinPupa_26, ~ Exp_26 )
pairs(marginalPupa_26, adjust="bonferroni")

      # Letters of significance Pupa 26 C

letterePupa_26 <- cld(marginalPupa_26, alpha=0.05, Letters=letters, 
                      adjust="bonferroni")
letterePupa_26



  # 29C

    # Egg 29C

GenLinEgg_29 <- lm(DevTimeEgg_29 ~ Exp_29, data=dataset_29)
summary(GenLinEgg_29)

      # Pairwise comparison Egg 29 C

marginalEgg_29 = emmeans(GenLinEgg_29, ~ Exp_29 )
pairs(marginalEgg_29, adjust="bonferroni")

      # Letters of significance Egg 29 C

lettereEgg_29 <- cld(marginalEgg_29, alpha=0.05, Letters=letters, 
                     adjust="bonferroni")
lettereEgg_29

    # Larva 29C

GenLinLarva_29 <- lm(DevTimeLarva_29 ~ Exp_29, data=dataset_29)
summary(GenLinLarva_29)

      # Pairwise comparison Larva 29 C

marginalLarva_29 = emmeans(GenLinLarva_29, ~ Exp_29 )
pairs(marginalLarva_29, adjust="bonferroni")

      # Letters of significance Larva 29 C

lettereLarva_29 <- cld(marginalLarva_29, alpha=0.05, Letters=letters, 
                       adjust="bonferroni")
lettereLarva_29

    # Pupa 29C

GenLinPupa_29 <- lm(DevTimePupa_29 ~ Exp_29, data=dataset_29)
summary(GenLinPupa_29)

      # Pairwise comparison Pupa 29 C

marginalPupa_29 = emmeans(GenLinPupa_29, ~ Exp_29 )
pairs(marginalPupa_29, adjust="bonferroni")

      # Letters of significance Pupa 29 C

letterePupa_29 <- cld(marginalPupa_29, alpha=0.05, Letters=letters, 
                      adjust="bonferroni")
letterePupa_29



  # 34C

    # Egg 34C

GenLinEgg_34 <- lm(DevTimeEgg_34 ~ Exp_34, data=dataset_34)
summary(GenLinEgg_34)

      # Pairwise comparison Egg 34 C

marginalEgg_34 = emmeans(GenLinEgg_34, ~ Exp_34 )
pairs(marginalEgg_34, adjust="bonferroni")

      # Letters of significance Egg 34 C

lettereEgg_34 <- cld(marginalEgg_34, alpha=0.05, Letters=letters, 
                     adjust="bonferroni")
lettereEgg_34

    # Larva 34C

GenLinLarva_34 <- lm(DevTimeLarva_34 ~ Exp_34, data=dataset_34)
summary(GenLinLarva_34)

      # Pairwise comparison Larva 34 C

marginalLarva_34 = emmeans(GenLinLarva_34, ~ Exp_34 )
pairs(marginalLarva_34, adjust="bonferroni")

      # Letters of significance Larva 34 C

lettereLarva_34 <- cld(marginalLarva_34, alpha=0.05, Letters=letters, 
                       adjust="bonferroni")
lettereLarva_34



  # 36C

    # Egg 36C

GenLinEgg_36 <- lm(DevTimeEgg_36 ~ Exp_36, data=dataset_36)
summary(GenLinEgg_36)

      # Pairwise comparison Egg 36 C

marginalEgg_36 = emmeans(GenLinEgg_36, ~ Exp_36 )
pairs(marginalEgg_36, adjust="bonferroni")

      # Letters of significance Egg 36 C

lettereEgg_36 <- cld(marginalEgg_36, alpha=0.05, Letters=letters, 
                     adjust="bonferroni")
lettereEgg_36



# LM analysis of the differences of development times among temperatures


  # 35 RH

    # Egg 35RH

GenLinEgg_35RH <- lm(DevTimeEgg_35RH ~ Temperature_35RH, data=dataset_35RH)
summary(GenLinEgg_35RH)

      # Pairwise comparison Egg 35RH

marginalEgg_35RH = emmeans(GenLinEgg_35RH, ~ Temperature_35RH )
pairs(marginalEgg_35RH, adjust="bonferroni")

      # Letters of significance Egg 35RH

lettereEgg_35RH <- cld(marginalEgg_35RH, alpha=0.05, Letters=letters, 
                     adjust="bonferroni")
lettereEgg_35RH


    # Larva 35RH

GenLinLarva_35RH <- lm(DevTimeLarva_35RH ~ Temperature_35RH, data=dataset_35RH)
summary(GenLinLarva_35RH)

      # Pairwise comparison Larva 35RH

marginalLarva_35RH = emmeans(GenLinLarva_35RH, ~ Temperature_35RH )
pairs(marginalLarva_35RH, adjust="bonferroni")

      # Letters of significance Larva 35RH

lettereLarva_35RH <- cld(marginalLarva_35RH, alpha=0.05, Letters=letters, 
                       adjust="bonferroni")
lettereLarva_35RH


    # Pupa 35RH

GenLinPupa_35RH <- lm(DevTimePupa_35RH ~ Temperature_35RH, data=dataset_35RH)
summary(GenLinPupa_35RH)

      # Pairwise comparison Pupa 35RH

marginalPupa_35RH = emmeans(GenLinPupa_35RH, ~ Temperature_35RH )
pairs(marginalPupa_35RH, adjust="bonferroni")

      # Letters of significance Pupa 35RH

letterePupa_35RH <- cld(marginalPupa_35RH, alpha=0.05, Letters=letters, 
                         adjust="bonferroni")
letterePupa_35RH



  # 70 RH

    # Egg 70RH

GenLinEgg_70RH <- lm(DevTimeEgg_70RH ~ Temperature_70RH, data=dataset_70RH)
summary(GenLinEgg_70RH)

      # Pairwise comparison Egg 70RH

marginalEgg_70RH = emmeans(GenLinEgg_70RH, ~ Temperature_70RH )
pairs(marginalEgg_70RH, adjust="bonferroni")

      # Letters of significance Egg 70RH

lettereEgg_70RH <- cld(marginalEgg_70RH, alpha=0.05, Letters=letters, 
                       adjust="bonferroni")
lettereEgg_70RH


    # Larva 70RH

GenLinLarva_70RH <- lm(DevTimeLarva_70RH ~ Temperature_70RH, data=dataset_70RH)
summary(GenLinLarva_70RH)

      # Pairwise comparison Larva 70RH

marginalLarva_70RH = emmeans(GenLinLarva_70RH, ~ Temperature_70RH )
pairs(marginalLarva_70RH, adjust="bonferroni")

      # Letters of significance Larva 70RH

lettereLarva_70RH <- cld(marginalLarva_70RH, alpha=0.05, Letters=letters, 
                         adjust="bonferroni")
lettereLarva_70RH


    # Pupa 35RH

GenLinPupa_70RH <- lm(DevTimePupa_70RH ~ Temperature_70RH, data=dataset_70RH)
summary(GenLinPupa_70RH)

      # Pairwise comparison Pupa 70RH

marginalPupa_70RH = emmeans(GenLinPupa_70RH, ~ Temperature_70RH )
pairs(marginalPupa_70RH, adjust="bonferroni")

      # Letters of significance Pupa 70RH

letterePupa_70RH <- cld(marginalPupa_70RH, alpha=0.05, Letters=letters, 
                        adjust="bonferroni")
letterePupa_70RH



# BOXPLOT of the whole datasets 35 and 70 RH


library(ggplot2)


# Egg 35RH

boxPlotEgg_35RH <- ggplot(dataset_35RH, aes(x=Temperature_35RH, 
                                        y=DevTimeEgg_35RH, 
                                        fill='none')) + 
                            geom_boxplot(width=0.7) + 
                            xlab("Temperature") + 
                            ylab("Time (days)") + 
                            ggtitle("Egg 35% RH") +
                            theme(plot.title = element_text(hjust=0.5), 
                                        text = element_text(size=21)) + 
                            theme(legend.position = "none")

boxPlotEgg_35RH


# Larva 35RH

boxPlotLarva_35RH <- ggplot(dataset_35RH, aes(x=Temperature_35RH, 
                                            y=DevTimeLarva_35RH, 
                                            fill='none')) + 
                              geom_boxplot(width=0.7) + 
                              xlab("Temperature") + 
                              ylab("Time (days)") + 
                              ggtitle("Larva 35% RH") +
                              theme(plot.title = element_text(hjust=0.5), 
                                          text = element_text(size=21)) + 
                              theme(legend.position = "none")

boxPlotLarva_35RH


# Pupa 35RH

boxPlotPupa_35RH <- ggplot(dataset_35RH, aes(x=Temperature_35RH, 
                                              y=DevTimePupa_35RH, 
                                              fill='none')) + 
                              geom_boxplot(width=0.7) + 
                              xlab("Temperature") + 
                              ylab("Time (days)") + 
                              ggtitle("Pupa 35% RH") +
                              theme(plot.title = element_text(hjust=0.5), 
                                          text = element_text(size=21)) + 
                              theme(legend.position = "none")

boxPlotPupa_35RH



# Egg 70RH

boxPlotEgg_70RH <- ggplot(dataset_70RH, aes(x=Temperature_70RH, 
                                            y=DevTimeEgg_70RH, 
                                            fill='none')) + 
                              geom_boxplot(width=0.7) + 
                              xlab("Temperature") + 
                              ylab("Time (days)") + 
                              ggtitle("Egg 70% RH") +
                              theme(plot.title = element_text(hjust=0.5), 
                                          text = element_text(size=21)) + 
                              theme(legend.position = "none")

boxPlotEgg_70RH


# Larva 70RH

boxPlotLarva_70RH <- ggplot(dataset_70RH, aes(x=Temperature_70RH, 
                                              y=DevTimeLarva_70RH, 
                                              fill='none')) + 
                              geom_boxplot(width=0.7) + 
                              xlab("Temperature") + 
                              ylab("Time (days)") + 
                              ggtitle("Larva 70% RH") +
                              theme(plot.title = element_text(hjust=0.5), 
                                          text = element_text(size=21)) + 
                              theme(legend.position = "none")

boxPlotLarva_70RH


# Pupa 35RH

boxPlotPupa_70RH <- ggplot(dataset_70RH, aes(x=Temperature_70RH, 
                                             y=DevTimePupa_70RH, 
                                             fill='none')) + 
                              geom_boxplot(width=0.7) + 
                              xlab("Temperature") + 
                              ylab("Time (days)") + 
                              ggtitle("Pupa 70% RH") +
                              theme(plot.title = element_text(hjust=0.5), 
                                          text = element_text(size=21)) + 
                              theme(legend.position = "none")

boxPlotPupa_70RH


# Making a grid resuming the plots

library(ggpubr)

grid_plot_DevTimes <- ggarrange(boxPlotEgg_35RH, boxPlotEgg_70RH,
                       boxPlotLarva_35RH, boxPlotLarva_70RH,
                       boxPlotPupa_35RH, boxPlotPupa_70RH,
                       ncol = 2, nrow = 3)

grid_plot_DevTimes



