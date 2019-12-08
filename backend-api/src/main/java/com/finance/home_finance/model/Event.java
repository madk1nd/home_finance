package com.finance.home_finance.model;

import lombok.Data;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.Set;
import java.util.UUID;

@Data
@Entity
@Table(name = "events")
public class Event {

    @Id
    @Column(name = "id")
    @Type(type = "pg-uuid")
    private UUID id;

    @Column(name = "name")
    private String name;

    @Column(name = "value")
    private BigInteger value;

    @Column(name = "date")
    private LocalDateTime date;

    @ManyToOne
    @JoinColumn(name = "category")
    private Category category;

    @ManyToMany
    @JoinTable(
            name = "event_labels",
            joinColumns = @JoinColumn(name = "event_id"),
            inverseJoinColumns = @JoinColumn(name = "label_id")
    )
    private Set<Label> labels;
}
