.class public Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final GMT:Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GMT_ID:Ljava/time/ZoneId;

.field private static final GRANULARITY_MILLIS:I = 0x3e8

.field public static final INSTANCE:Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# instance fields
.field private dateAsMillis:J

.field private dateAsText:Ljava/lang/String;

.field private final dateTimeFormatter:Ljava/time/format/DateTimeFormatter;

.field private zoneId:Ljava/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->GMT:Ljava/util/TimeZone;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/cookie/a;->i()Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->GMT_ID:Ljava/time/ZoneId;

    new-instance v1, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v1, v2, v0}, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;-><init>(Ljava/lang/String;Ljava/time/ZoneId;)V

    sput-object v1, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->INSTANCE:Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LW3/h;->t()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, LW3/h;->u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, LW3/h;->D(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/cookie/a;->u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, LW3/h;->s(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->dateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    sget-object v0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->GMT_ID:Ljava/time/ZoneId;

    iput-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->zoneId:Ljava/time/ZoneId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/time/ZoneId;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LW3/h;->t()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, LW3/h;->u(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0}, LW3/h;->D(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {v0, p1}, LW3/h;->v(Ljava/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    invoke-static {p1}, LW3/h;->s(Ljava/time/format/DateTimeFormatterBuilder;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->dateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    iput-object p2, p0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->zoneId:Ljava/time/ZoneId;

    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentDate()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->dateAsMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->dateTimeFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, LW3/h;->n()Ljava/time/Instant;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->zoneId:Ljava/time/ZoneId;

    invoke-static {v3, v4}, Lorg/apache/hc/client5/http/impl/cookie/a;->k(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/hc/client5/http/impl/cookie/a;->c(Ljava/time/format/DateTimeFormatter;Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->dateAsText:Ljava/lang/String;

    iput-wide v0, p0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->dateAsMillis:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpDateGenerator;->dateAsText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
