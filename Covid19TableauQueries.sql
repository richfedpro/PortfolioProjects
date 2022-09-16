-- Tableau project

Select SUM(cast(new_cases as float)) as total_cases, SUM(cast(new_deaths as float)) as total_deaths, SUM(cast(new_deaths as float))/SUM(cast(New_Cases as float))*100 as DeathPercentage
From PortfolioProject..CovidDeaths
--Where location like '%states%'
where continent is not null 
--Group By date
order by 1,2



-- 2- 

Select continent, SUM(cast(new_deaths as float)) as TotalDeathsCount
From PortfolioProject..CovidDeaths
--Where location like '%states%'
where continent is not null 
and continent not in ('world','Europeam Union', 'International')
Group by continent
--Group By date
order by TotalDeathsCount desc


-- 3
-- Countries with Highest Infection Rate compared to Population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((CONVERT(float,total_cases))/(CONVERT(float,population))*100) as PercentPopulationInfected
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc



--4 
-- Countries with Highest Infection Rate compared to Population

Select Location, Population,date, MAX(total_cases) as HighestInfectionCount,  Max((CONVERT(float,total_cases))/(CONVERT(float,population))*100) as PercentPopulationInfected
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Group by Location, Population, date
order by PercentPopulationInfected desc














select * from PortfolioProject..CovidDeaths


Select Location, SUM(cast(new_deaths as float)) as TotalDeathsCount
From PortfolioProject..CovidDeaths
--Where location like '%states%'
where continent is not null 
