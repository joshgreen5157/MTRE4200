// Generated by gencpp from file my_pack/TimerResult.msg
// DO NOT EDIT!


#ifndef MY_PACK_MESSAGE_TIMERRESULT_H
#define MY_PACK_MESSAGE_TIMERRESULT_H


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
struct TimerResult_
{
  typedef TimerResult_<ContainerAllocator> Type;

  TimerResult_()
    : time_elapsed()
    , updates_sent(0)  {
    }
  TimerResult_(const ContainerAllocator& _alloc)
    : time_elapsed()
    , updates_sent(0)  {
  (void)_alloc;
    }



   typedef ros::Duration _time_elapsed_type;
  _time_elapsed_type time_elapsed;

   typedef uint32_t _updates_sent_type;
  _updates_sent_type updates_sent;





  typedef boost::shared_ptr< ::my_pack::TimerResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_pack::TimerResult_<ContainerAllocator> const> ConstPtr;

}; // struct TimerResult_

typedef ::my_pack::TimerResult_<std::allocator<void> > TimerResult;

typedef boost::shared_ptr< ::my_pack::TimerResult > TimerResultPtr;
typedef boost::shared_ptr< ::my_pack::TimerResult const> TimerResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_pack::TimerResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_pack::TimerResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_pack::TimerResult_<ContainerAllocator1> & lhs, const ::my_pack::TimerResult_<ContainerAllocator2> & rhs)
{
  return lhs.time_elapsed == rhs.time_elapsed &&
    lhs.updates_sent == rhs.updates_sent;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_pack::TimerResult_<ContainerAllocator1> & lhs, const ::my_pack::TimerResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_pack

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_pack::TimerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_pack::TimerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_pack::TimerResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_pack::TimerResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_pack::TimerResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_pack::TimerResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_pack::TimerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8227810e22df8077dd49231152c9e200";
  }

  static const char* value(const ::my_pack::TimerResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8227810e22df8077ULL;
  static const uint64_t static_value2 = 0xdd49231152c9e200ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_pack::TimerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_pack/TimerResult";
  }

  static const char* value(const ::my_pack::TimerResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_pack::TimerResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Part 2: the result, to be sent by the server upon completion\n"
"#\n"
"# How much time we waited\n"
"duration time_elapsed\n"
"# How many updates we provided along the way\n"
"uint32 updates_sent\n"
;
  }

  static const char* value(const ::my_pack::TimerResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_pack::TimerResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_elapsed);
      stream.next(m.updates_sent);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TimerResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_pack::TimerResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_pack::TimerResult_<ContainerAllocator>& v)
  {
    s << indent << "time_elapsed: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.time_elapsed);
    s << indent << "updates_sent: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.updates_sent);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_PACK_MESSAGE_TIMERRESULT_H
