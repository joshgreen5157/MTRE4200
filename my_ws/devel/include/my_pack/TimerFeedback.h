// Generated by gencpp from file my_pack/TimerFeedback.msg
// DO NOT EDIT!


#ifndef MY_PACK_MESSAGE_TIMERFEEDBACK_H
#define MY_PACK_MESSAGE_TIMERFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_pack
{
template <class ContainerAllocator>
struct TimerFeedback_
{
  typedef TimerFeedback_<ContainerAllocator> Type;

  TimerFeedback_()
    : time_elapsed()
    , time_remaining()  {
    }
  TimerFeedback_(const ContainerAllocator& _alloc)
    : time_elapsed()
    , time_remaining()  {
  (void)_alloc;
    }



   typedef ros::Duration _time_elapsed_type;
  _time_elapsed_type time_elapsed;

   typedef ros::Duration _time_remaining_type;
  _time_remaining_type time_remaining;





  typedef boost::shared_ptr< ::my_pack::TimerFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_pack::TimerFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct TimerFeedback_

typedef ::my_pack::TimerFeedback_<std::allocator<void> > TimerFeedback;

typedef boost::shared_ptr< ::my_pack::TimerFeedback > TimerFeedbackPtr;
typedef boost::shared_ptr< ::my_pack::TimerFeedback const> TimerFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_pack::TimerFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_pack::TimerFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_pack::TimerFeedback_<ContainerAllocator1> & lhs, const ::my_pack::TimerFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.time_elapsed == rhs.time_elapsed &&
    lhs.time_remaining == rhs.time_remaining;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_pack::TimerFeedback_<ContainerAllocator1> & lhs, const ::my_pack::TimerFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_pack

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_pack::TimerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_pack::TimerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_pack::TimerFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_pack::TimerFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_pack::TimerFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_pack::TimerFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_pack::TimerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f7ef31d21e406bbd1f38a63801a29be7";
  }

  static const char* value(const ::my_pack::TimerFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf7ef31d21e406bbdULL;
  static const uint64_t static_value2 = 0x1f38a63801a29be7ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_pack::TimerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_pack/TimerFeedback";
  }

  static const char* value(const ::my_pack::TimerFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_pack::TimerFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Part 3: the feedback, to be sent periodically by the server during\n"
"# execution.\n"
"#\n"
"# The amount of time that has elapsed from the start\n"
"duration time_elapsed\n"
"# The amount of time remaining until we're done\n"
"duration time_remaining\n"
"\n"
;
  }

  static const char* value(const ::my_pack::TimerFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_pack::TimerFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_elapsed);
      stream.next(m.time_remaining);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TimerFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_pack::TimerFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_pack::TimerFeedback_<ContainerAllocator>& v)
  {
    s << indent << "time_elapsed: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.time_elapsed);
    s << indent << "time_remaining: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.time_remaining);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_PACK_MESSAGE_TIMERFEEDBACK_H
