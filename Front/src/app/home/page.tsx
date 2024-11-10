'use client';

import EasyRentMoto from '@/components/core/EasyRentMoto/EasyRentMoto';
import MainFilter from '@/components/shared/filter/MainFilter/MainFilter';
import Header from '@/components/shared/Header/Header';
import CompanyList from '@/components/shared/company/CompanyList/CompanyList';
import { Flex, Heading } from '@chakra-ui/react';
import { Vehicle } from '@/typings/vehicles/vehicles';
import VehicleCard from '@/components/shared/cars/VehicleCard/VechileCard';

//privremeno
const companies: Company[] = [
  {
    name: 'Company A',
    logo: 'https://content.r9cdn.net/rimg/provider-logos/cars/h/sixtrentacar.png?crop=false&height=40&fallback=default3.png&_v=b532596b127d57dbcf36adee9a479468',
  },
  {
    name: 'Company B',
    logo: 'https://content.r9cdn.net/rimg/provider-logos/cars/h/avantcar.png?crop=false&height=40&fallback=default2.png&_v=e130a57aa77800f88a4cb73f38918973',
  },
  {
    name: 'Company C',
    logo: 'https://content.r9cdn.net/rimg/provider-logos/cars/h/rentacarargentina.png?crop=false&height=40&fallback=default2.png&_v=462534b7d97b527dc9a4ca63980896f8',
  },
  {
    name: 'Company D',
    logo: 'https://content.r9cdn.net/rimg/provider-logos/cars/h/alamo.png?crop=false&height=40&fallback=default1.png&_v=9b69fc4d85a86436b9a4bbe5320887b4',
  },
  {
    name: 'Company E',
    logo: 'https://content.r9cdn.net/rimg/provider-logos/cars/h/autounion.png?crop=false&height=40&fallback=default3.png&_v=84bfc40a576581949c672b22091a609e',
  },
  {
    name: 'Company D',
    logo: 'https://content.r9cdn.net/rimg/provider-logos/cars/h/hertz.png?crop=false&height=40&fallback=default3.png&_v=b5d809cb115a670bbad4e51d92960c23',
  },
  {
    name: 'Company G',
    logo: 'https://content.r9cdn.net/rimg/provider-logos/cars/h/enterprise.png?crop=false&height=40&fallback=default3.png&_v=e58e7c74ab38dad83c27b49b39d0986f',
  },
];
const mockVechile: Vehicle = {
  image:
    'https://content.r9cdn.net/rimg/car-images/generic/10_station-wagon_white.png?height=116',
  brand: 'Toyota Corolla Wagon',
  company: 'Enterprise Rent-A-Car',
  pricePerDay: 134,
  rating: 5,
  reviews: 30,
  transmission: 'automatic',
  seats: 5,
  id: 1,
};

export default function HomePage() {
  return (
    <Flex direction="column" grow={1}>
      {/* <AuthRedirect to="/login" condition="isLoggedOut" /> */}
      <Header />
      {/* Drugi dio stranice */}
      <Flex
        bg="brandgray"
        minHeight="300px"
        color="brandblue"
        direction={'column'}
        align={'center'}
        justify={'flex-start'}
        py={14}
        gap={14}
        boxShadow="md"
        zIndex={1}
      >
        <EasyRentMoto />
        <MainFilter />
        <Flex gap={10} align={'center'}>
          <Heading size="lg" color={'brandblack'}>
            Trusted by the Best:
          </Heading>
          <CompanyList companies={companies} />
        </Flex>
      </Flex>

      {/* Dio stranice sa Listom automobila */}
      <Flex justify={'center'} align={'center'}>
        <VehicleCard vehicle={mockVechile} />
      </Flex>
    </Flex>
  );
}
