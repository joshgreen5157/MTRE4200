#!/usr/bin/env python

import rospy

from my_pack.srv import WordCount

import sys

rospy.init_node('service_client')
rospy.wait_for_service('word_count')

word_counter = rospy.ServiceProxy('word_count', WordCount)
words = "This a test string"
word_count = word_counter(words)
print (words, "->", word_count.count)
