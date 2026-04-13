.class public abstract synthetic Lorg/apache/hc/core5/http/nio/entity/a;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic A()Ljava/time/temporal/ChronoUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static bridge synthetic B()Ljava/time/temporal/ChronoUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static bridge synthetic C()Ljava/time/temporal/ChronoUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static bridge synthetic D()Ljava/time/temporal/ChronoUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static bridge synthetic a(Ljava/time/Duration;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/time/Duration;)J
    .locals 2

    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;
    .locals 1

    const-string v0, "com.google.android.gms.availability"

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/invoke/MethodHandles$Lookup;

    return-object v0
.end method

.method public static bridge synthetic f(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/time/format/DateTimeFormatter;Ljava/time/OffsetDateTime;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/lang/invoke/MethodHandle;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j()Ljava/lang/invoke/MethodHandles$Lookup;
    .locals 1

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic k(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandles$Lookup;
    .locals 0

    check-cast p0, Ljava/lang/invoke/MethodHandles$Lookup;

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/io/File;)Ljava/nio/file/Path;
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n()Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static bridge synthetic o()Ljava/time/Duration;
    .locals 1

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v0
.end method

.method public static bridge synthetic p(JLjava/time/temporal/ChronoUnit;)Ljava/time/Duration;
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/time/Duration;->of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 0

    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s()Ljava/time/temporal/ChronoUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static bridge synthetic t(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic v(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static bridge synthetic w(Ljava/time/Duration;)J
    .locals 2

    invoke-virtual {p0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic x()Ljava/time/temporal/ChronoUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static bridge synthetic y(Ljava/time/Duration;)J
    .locals 2

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic z()Ljava/time/temporal/ChronoUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method
