'use client';

import EasyRentMoto from '@/components/core/EasyRentMoto/EasyRentMoto';
import MainFilter from '@/components/shared/filter/MainFilter/MainFilter';
import CompanyList from '@/components/shared/company/CompanyList/CompanyList';
import { Flex, Heading, useBreakpointValue } from '@chakra-ui/react';
import { mockVehicles } from '@/mockData/mockVehicles';
import VehicleList from '@/components/shared/cars/VechileList/VechileList';
import { companies } from '@/mockData/mockCompanies';
import { AuthRedirect } from '@/components/shared/auth/AuthRedirect/AuthRedirect';
import useSWR from 'swr';
import { swrKeys } from '@/fetchers/swrKeys';
import { getShowCaseds, IShowcased } from '@/fetchers/homeData';
import AuthHeader from '@/components/shared/Header/AuthUserHeader/AuthHeader';
import { useEffect, useState } from 'react';
import { ILoginData } from '@/mutation/login';

export default function UserHomePage() {
  const { data, error, isLoading } = useSWR(swrKeys.showcased, getShowCaseds);
  const [userData, setUserData] = useState<ILoginData>(); // State za podatke iz localStorage

  const gapSize = useBreakpointValue({
    base: 8, // Small gap for small screens (mobile)
    md: 10, // Slightly larger gap for medium screens (laptop/tablet)
    lg: 10, // Largest gap for large screens (desktop)
    xl: 10,
  });

  const headingSize = useBreakpointValue({
    md: 'sm', // Default heading size for laptop/tablet
    lg: 'lg', // Larger heading for desktop
  });

  useEffect(() => {
    // Dohvaćanje podataka iz localStorage
    const storedUserData = localStorage.getItem('userData');
    if (storedUserData) {
      try {
        setUserData(JSON.parse(storedUserData)); // Parsiranje podataka
      } catch (error) {
        console.error('Error parsing userData:', error);
      }
    }
  }, []);

  if (isLoading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>Error: {error.message}</div>;
  }

  return (
    <>
      <AuthRedirect to={'/login'} condition={'isLoggedOut'} />
      <AuthRedirect to={''} condition={'isLoggedIn'} RedIfRole={'company'} />
      <Flex direction="column" grow={1}>
        {/* <AuthRedirect to="/login" condition="isLoggedOut" /> */}
        <AuthHeader UserData={userData} />
        {/* Drugi dio stranice */}
        <Flex
          bg="brandlightgray"
          minHeight="300px"
          color="brandblue"
          direction={'column'}
          align={'center'}
          justify={'flex-start'}
          py={gapSize}
          gap={gapSize}
        >
          <EasyRentMoto />
          <MainFilter />
          <Flex gap={gapSize} align={'center'} px={5}>
            <Heading size={headingSize} color={'brandblue'}>
              Trusted by the Best:
            </Heading>
            <CompanyList companies={companies} />
          </Flex>
        </Flex>

        {/* Dio stranice sa Listom automobila */}
        <Flex
          justify={'center'}
          align={'center'}
          direction={'column'}
          py={8}
          gap={2}
        >
          <VehicleList
            vehicles={data?.most_popular}
            description={'Most popular:'}
            useDescription={true}
          />
          <VehicleList
            vehicles={data?.best_value}
            description={'Best value:'}
            useDescription={true}
          />
        </Flex>
      </Flex>
    </>
  );
}
