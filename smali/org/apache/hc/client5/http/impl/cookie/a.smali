.class public abstract synthetic Lorg/apache/hc/client5/http/impl/cookie/a;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic A()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->MAY:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic B()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->JUNE:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic C()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->JULY:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic D()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->AUGUST:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic a(Ljava/nio/file/Path;)J
    .locals 2

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic b(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Ljava/time/format/DateTimeFormatter;Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Ljava/nio/file/Path;
    .locals 0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static bridge synthetic f()Ljava/time/Instant;
    .locals 1

    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    return-object v0
.end method

.method public static bridge synthetic g(Ljava/time/ZonedDateTime;)Ljava/time/LocalDateTime;
    .locals 0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->OCTOBER:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic i()Ljava/time/ZoneId;
    .locals 1

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic j(Ljava/time/Instant;)Ljava/time/ZonedDateTime;
    .locals 1

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;
    .locals 0

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    const-string v0, "EEE MMM d HH:mm:ss yyyy"

    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o()Ljava/util/Base64$Decoder;
    .locals 1

    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic p()Ljava/util/Base64$Encoder;
    .locals 1

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic q(Ljava/util/Base64$Decoder;Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/util/Base64$Decoder;[B)[B
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/util/Base64$Encoder;[B)[B
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->NOVEMBER:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic v()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->DECEMBER:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic w(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 1

    const-string v0, "EEE, dd-MMM-yy HH:mm:ss zzz"

    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic y()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->MARCH:Ljava/time/Month;

    return-object v0
.end method

.method public static bridge synthetic z()Ljava/time/Month;
    .locals 1

    sget-object v0, Ljava/time/Month;->APRIL:Ljava/time/Month;

    return-object v0
.end method
