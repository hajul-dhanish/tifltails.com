import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final SupabaseClient _supabaseClient;

  // Constructor for dependency injection (optional, uses default Supabase client)
  SupabaseService({SupabaseClient? supabaseClient})
      : _supabaseClient = supabaseClient ?? Supabase.instance.client;

  /// Insert data into a Supabase table
  Future<void> insertData(String tableName, Map<String, dynamic> data) async {
    try {
      await _supabaseClient.from(tableName).insert(data);
    } catch (e) {
      rethrow;
    }
  }

  static String initializeUrl = 'https://kwfdkxjewqupyihjjzfs.supabase.co';
  static String anonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt3ZmRreGpld3F1cHlpaGpqemZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc5NjEyMTYsImV4cCI6MjA1MzUzNzIxNn0.uEOuxBIq_i2dT0vfu1poDEAXuGXcnVQQtzut-GZGhLc';

  /// Fetch all data from a Supabase table
  Future<dynamic> fetchData(String tableName) async {
    try {
      final response = await _supabaseClient.from(tableName).select();
      return response;
    } catch (e) {
      throw e;
    }
  }

  /// Fetch filtered data from a Supabase table
  Future<List<Map<String, dynamic>>> filterData(
      String tableName, String columnName, dynamic value) async {
    try {
      final response =
          await _supabaseClient.from(tableName).select().eq(columnName, value);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  /// Fetch all the data from the specific Column from a Supabase table
  Future<List<Map<String, dynamic>>> fetchSpecificColumn(
      String tableName, String columnName) async {
    try {
      final response = await _supabaseClient.from(tableName).select(columnName);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
