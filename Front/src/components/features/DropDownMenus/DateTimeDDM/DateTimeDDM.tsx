'use client';

import { useState, useRef } from 'react';
import {
  Stack,
  Text,
  InputGroup,
  Input,
  InputLeftElement,
  InputRightElement,
  IconButton,
  useBreakpointValue,
  useOutsideClick,
  Box,
} from '@chakra-ui/react';
import { CalendarIcon, CloseIcon } from '@chakra-ui/icons';
import Calendar, { CalendarProps } from 'react-calendar';
import 'react-calendar/dist/Calendar.css'; // Import default styles
import './custom-calendar.css'; // Import custom styles

interface DateTimeDDMProps {
  description: string;
  placeHolder: string;
  minDate?: Date; // Earliest selectable date
  maxDate?: Date; // Latest selectable date
  onDateChange?: (date: Date | null) => void; // Callback for date selection
}

export default function DateTimeDDM({
  description,
  placeHolder,
  minDate,
  maxDate,
  onDateChange,
}: DateTimeDDMProps) {
  const [isOpen, setIsOpen] = useState(false);
  const [selectedDate, setSelectedDate] = useState<Date | null>(null);
  const ref = useRef(null);

  useOutsideClick({
    ref,
    handler: () => setIsOpen(false),
  });

  const handleDateChange: CalendarProps['onChange'] = (value) => {
    if (value instanceof Date) {
      setSelectedDate(value); // Set selected date
      setIsOpen(false); // Close calendar dropdown
      onDateChange?.(value); // Notify parent of date change
    }
  };

  const handleClearDate = () => {
    setSelectedDate(null); // Clear the selected date
    onDateChange?.(null); // Notify parent of date reset
  };

  const descriptionFontSize = useBreakpointValue({
    base: '0.75rem', // Smaller text on mobile devices
    md: '0.8rem', // Slightly larger text for medium screens
    lg: '0.8rem', // Even larger for larger screens
  });

  return (
    <Stack gap={0} position="relative" ref={ref} width="100%">
      <Text fontSize={descriptionFontSize} color="brandblue">
        {description}
      </Text>
      <InputGroup
        height="fit-content"
        borderWidth="2px"
        borderRadius="md"
        borderColor="brandblue"
        width="100%"
        bg="brandlightgray"
        _focusWithin={{
          bg: 'brandwhite',
          borderColor: 'brandblack',
          color: 'brandblack',
        }}
      >
        <InputLeftElement pointerEvents="none" color="brandblack">
          <CalendarIcon />
        </InputLeftElement>
        <Input
          onClick={() => setIsOpen(!isOpen)} // Toggle calendar dropdown
          cursor="pointer"
          placeholder={placeHolder}
          value={selectedDate ? selectedDate.toLocaleDateString() : ''} // Display selected date
          readOnly // Prevent text input
          color="brandblack"
          border="none"
          _focus={{ borderColor: 'none', boxShadow: 'none' }}
        />
        {selectedDate && (
          <InputRightElement>
            <IconButton
              aria-label="Clear date"
              icon={<CloseIcon />}
              size="sm"
              onClick={handleClearDate} // Clear date on click
              variant="ghost"
              color="brandblack"
            />
          </InputRightElement>
        )}
      </InputGroup>

      {isOpen && (
        <Box
          position="absolute"
          top="100%"
          zIndex="10"
          mt={2}
          boxShadow="lg"
          borderRadius="md"
          bg="white"
          p={0}
        >
          <Calendar
            onChange={handleDateChange} // Handle date change
            value={selectedDate} // Current selected date
            minDate={minDate || new Date()} // Disable past dates or use provided minDate
            maxDate={maxDate} // Use provided maxDate
            view="month" // Limit view to month only
            tileClassName={({ date, view }) =>
              view === 'month' &&
              date.toDateString() === new Date().toDateString()
                ? 'react-calendar__tile--now' // Highlight today's date
                : undefined
            }
            className="custom-calendar" // Apply custom styles
          />
        </Box>
      )}
    </Stack>
  );
}
