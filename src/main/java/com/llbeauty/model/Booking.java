package com.llbeauty.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "bookings")
public class Booking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Many-to-one relationship with User (customer)
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    // Many-to-one relationship with SalonInfo (which salon the booking is for)
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "salon_id", nullable = false)
    private SalonInfo salonInfo;

    @Column(nullable = false)
    private LocalDateTime bookingDateTime;

    @Column(nullable = false)
    private String status; // e.g., PENDING, CONFIRMED, CANCELLED

    // Constructors
    public Booking() {}

    public Booking(User user, SalonInfo salonInfo, LocalDateTime bookingDateTime, String status) {
        this.user = user;
        this.salonInfo = salonInfo;
        this.bookingDateTime = bookingDateTime;
        this.status = status;
    }

    // Getters & Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public User getUser() { return user; }
    public void setUser(User user) { this.user = user; }
    public SalonInfo getSalonInfo() { return salonInfo; }
    public void setSalonInfo(SalonInfo salonInfo) { this.salonInfo = salonInfo; }
    public LocalDateTime getBookingDateTime() { return bookingDateTime; }
    public void setBookingDateTime(LocalDateTime bookingDateTime) { this.bookingDateTime = bookingDateTime; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
