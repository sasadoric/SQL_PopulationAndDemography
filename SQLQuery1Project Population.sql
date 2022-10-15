--Select Data
Select *
from PopulationDemographyProject..['population-and-demographyProjek$'];

--Total Children vs Total Population in America

select CountryName, Year, PopulationUnderFifteen, Population, (PopulationUnderFifteen/Population)*100 as ChildrenPercentage
from PopulationDemographyProject..['population-and-demographyProjek$']
--where CountryName like '%America%';

--Percentage of Newborn vs Total Children

select CountryName, Year, PopulationUnderFifteen, PopulationUnderOne, (PopulationUnderOne/PopulationUnderFifteen)*100 as ChildrenPercentage
from PopulationDemographyProject..['population-and-demographyProjek$']
--where CountryName like '%America%';

--Countries with Highest Percentage of Children Compared to Population
select CountryName, Year, Population, Max(PopulationUnderFifteen), Max((PopulationUnderFifteen/Population))*100 as ChildrenPercentage
from PopulationDemographyProject..['population-and-demographyProjek$']
--where CountryName like '%America%';
Group by CountryName, Year, Population
order by CountryName


