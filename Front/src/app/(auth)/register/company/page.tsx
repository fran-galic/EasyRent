'use client';

import {
  FormErrorMessage, 
  chakra, 
  Box, 
  Button, 
  FormControl, 
  FormLabel, 
  Input, 
  VStack, 
  Flex, 
  Spacer
} from '@chakra-ui/react';
import {useForm} from 'react-hook-form';
import { useState } from 'react';
import WorkingHoursForm from '@/components/shared/auth/WorkingHoursForm';
import { IRegisterCompany } from '@/typings/company/companyRegister.type';
import useSWRMutation from 'swr/mutation';

//ovo sam ja napravio novo za company
import { registerCompany } from '@/mutation/authCompany';
//nezz dali su ovo dobri inportovi ili napravit nove fileove za company register
import { swrKeys } from '@/fetchers/swrKeys';
import SuccessWindow from '@/components/shared/SuccessWidnow/SuccessWidnow';



export default function HomePage() {
  const [registered, setRegistered] = useState(false);
  const {
    register,
    handleSubmit,
    formState: { isSubmitting, errors },
    setError,
    clearErrors,
    getValues,
  } = useForm<IRegisterCompany>();


  const { trigger } = useSWRMutation(swrKeys.registerCompany, registerCompany, {
    onSuccess: () => {
      setRegistered(true);
    },
    onError: () => {
      setError('email', {
        type: 'manual',
        message: 'This account already exists',
      });
    },
  });

  const onRegister = async (data: IRegisterCompany) => {
    // ja sam ovdje sve errore napravio unutar input componenti
    clearErrors();
    console.log('On register:', data);
    await trigger(data);
    console.log(data);
    }

  const suppButtons = {
    bg: "brandlightgray",
    p: 5,
    m: 5,
    BorderRadius: 'md',
  };

  const inputText = {
    w: "40%"
  }

  return registered ? ( <SuccessWindow /> ) :
  (
    <Box
    minWidth="800px"
    maxW="1200px"
    w="80vw"
    margin="0 auto"
    mt="10"
    p="6"
    boxShadow="lg"
    borderRadius="md"
    bg="brandwhite"
  >
    <chakra.form onSubmit={handleSubmit(onRegister)}>
      <Flex justifyContent="space-between">
        <VStack spacing="4" w="45%">
          <FormControl isRequired>
              <FormLabel>Company name</FormLabel>
              <Input
              {...register("name")}
                type="text"
                placeholder="Enter company name"
              />
          </FormControl>

          <FormControl isRequired isInvalid={!!errors.email}>
            <FormLabel>Company email</FormLabel>
            <Input
            {...register("email")}
              type="email"
              placeholder="Enter company email"
            />
          {errors.email && (
                <FormErrorMessage color="red">
                  {errors.email.message}
                </FormErrorMessage>
            )
          }
          </FormControl>

          <FormControl isRequired>
            <FormLabel>Phone number</FormLabel>
            <Input
            {...register("phone")}
              type="tel"
              placeholder="Enter company phone number"
            />
          </FormControl>

          <FormControl isRequired>
            <FormLabel>HQ address</FormLabel>
            <Input
            {...register("HQaddress")}
              type="text"
              placeholder="Enter company address"
            />
          </FormControl>
        </VStack>
      
        <VStack spacing="4" w="45%">
          <WorkingHoursForm />
          <FormControl isRequired isInvalid={!!errors.password}>
            <FormLabel>Password</FormLabel>
            <Input
            {...register("password", {
              required: "Must enter password",
              validate: (value: string) =>{
                if (value.length < 8)
                  return 'Password must be at least 8 characters';
                return true;
              }})
            }
              type="password"
              placeholder="Enter your password"
            />
          {errors.password && (<FormErrorMessage color="red">{errors.password.message}</FormErrorMessage>)}
          </FormControl>

          <FormControl isRequired isInvalid={!!errors.password_confirm}>
            <FormLabel>Confirm password</FormLabel>
            <Input
            {...register("password_confirm", {
              required: "Password confirmation is required",
              validate: (value: string) =>{
                if (value === getValues('password'))
                  return true;
                return 'Passwords do not match';
              }})
            }
              type="password"
              placeholder="Repeat your password"
            />
          {errors.password_confirm && (<FormErrorMessage color="red">{errors.password_confirm.message}</FormErrorMessage>)}
          </FormControl>
        </VStack>
      </Flex>

      <Flex direction={'row'} justifyContent={'space-evenly'} alignItems={'center'}
        w={'full'} mt={5}
        >
          <Button  as="a" href='/' sx={suppButtons}>
            Continue as guest
          </Button>
          <Button as="a" href='/login' p={5} borderRadius="md" sx={suppButtons}
          bg="brandblue" m="5">
            Login
          </Button>
            <Spacer />
          <Button type="submit" p={5} borderRadius="md"
          bg="brandblue" m="5" color={'brandwhite'} mr="30%">
            Register
          </Button>
        </Flex>
    </chakra.form>
  </Box>
  );
}

