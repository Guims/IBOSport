.class public final Lorg/apache/hc/client5/http/utils/DateUtils;
.super Ljava/lang/Object;


# static fields
.field public static final FORMATTER_ASCTIME:Ljava/time/format/DateTimeFormatter;

.field public static final FORMATTER_RFC1036:Ljava/time/format/DateTimeFormatter;

.field public static final FORMATTER_RFC1123:Ljava/time/format/DateTimeFormatter;

.field public static final GMT:Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final GMT_ID:Ljava/time/ZoneId;

.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"

.field public static final STANDARD_PATTERNS:[Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, LW3/h;->t()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, LW3/h;->u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, LW3/h;->D(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/cookie/a;->u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/cookie/a;->m(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/utils/DateUtils;->FORMATTER_RFC1123:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, LW3/h;->t()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-static {v1}, LW3/h;->u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-static {v1}, LW3/h;->D(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/cookie/a;->w(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/client5/http/impl/cookie/a;->m(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Lorg/apache/hc/client5/http/utils/DateUtils;->FORMATTER_RFC1036:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, LW3/h;->t()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-static {v2}, LW3/h;->u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-static {v2}, LW3/h;->D(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/cookie/a;->n(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/cookie/a;->m(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sput-object v2, Lorg/apache/hc/client5/http/utils/DateUtils;->FORMATTER_ASCTIME:Ljava/time/format/DateTimeFormatter;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/time/format/DateTimeFormatter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lorg/apache/hc/client5/http/utils/DateUtils;->STANDARD_PATTERNS:[Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->i()Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/utils/DateUtils;->GMT_ID:Ljava/time/ZoneId;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/utils/DateUtils;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadLocal()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static formatDate(Ljava/time/Instant;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1

    const-string v0, "Instant"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "DateTimeFormatter"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/hc/client5/http/utils/DateUtils;->GMT_ID:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Lorg/apache/hc/client5/http/impl/cookie/a;->k(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/hc/client5/http/impl/cookie/a;->c(Ljava/time/format/DateTimeFormatter;Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DateUtils;->toInstant(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DateUtils;->formatStandardDate(Ljava/time/Instant;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Date"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Pattern"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/cookie/a;->l(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DateUtils;->toInstant(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p0

    sget-object v0, Lorg/apache/hc/client5/http/utils/DateUtils;->GMT_ID:Ljava/time/ZoneId;

    invoke-static {p0, v0}, Lorg/apache/hc/client5/http/impl/cookie/a;->k(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/hc/client5/http/impl/cookie/a;->c(Ljava/time/format/DateTimeFormatter;Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStandardDate(Ljava/time/Instant;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/utils/DateUtils;->FORMATTER_RFC1123:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/apache/hc/client5/http/utils/DateUtils;->formatDate(Ljava/time/Instant;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAfter(Lorg/apache/hc/core5/http/MessageHeaders;Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBefore(Lorg/apache/hc/core5/http/MessageHeaders;Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs parseDate(Ljava/lang/String;[Ljava/time/format/DateTimeFormatter;)Ljava/time/Instant;
    .locals 3

    const-string v0, "Date value"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v2

    invoke-static {v2}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    array-length p2, p1

    new-array p2, p2, [Ljava/time/format/DateTimeFormatter;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    invoke-static {}, LW3/h;->t()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-static {v1}, LW3/h;->u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-static {v1}, LW3/h;->D(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-static {v1, v2}, LW3/h;->v(Ljava/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-static {v1}, LW3/h;->s(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/client5/http/utils/DateUtils;->STANDARD_PATTERNS:[Ljava/time/format/DateTimeFormatter;

    :cond_1
    invoke-static {p0, p2}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseDate(Ljava/lang/String;[Ljava/time/format/DateTimeFormatter;)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DateUtils;->toDate(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseDate(Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/String;)Ljava/util/Date;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseStandardDate(Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/String;)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DateUtils;->toDate(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseStandardDate(Ljava/lang/String;)Ljava/time/Instant;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/utils/DateUtils;->STANDARD_PATTERNS:[Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseDate(Ljava/lang/String;[Ljava/time/format/DateTimeFormatter;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static parseStandardDate(Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/String;)Ljava/time/Instant;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseStandardDate(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static toDate(Ljava/time/Instant;)Ljava/util/Date;
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, LW3/h;->d(Ljava/time/Instant;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toInstant(Ljava/util/Date;)Ljava/time/Instant;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, LW3/h;->o(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toUTC(Ljava/time/Instant;)Ljava/time/LocalDateTime;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {}, LC2/a;->p()Ljava/time/ZoneOffset;

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/cookie/a;->j(Ljava/time/Instant;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/cookie/a;->g(Ljava/time/ZonedDateTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toUTC(Ljava/util/Date;)Ljava/time/LocalDateTime;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DateUtils;->toInstant(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/DateUtils;->toUTC(Ljava/time/Instant;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method
