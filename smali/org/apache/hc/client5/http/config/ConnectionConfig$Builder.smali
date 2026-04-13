.class public Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/config/ConnectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private connectTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private socketTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private timeToLive:Lorg/apache/hc/core5/util/TimeValue;

.field private validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->access$000()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 5

    new-instance v0, Lorg/apache/hc/client5/http/config/ConnectionConfig;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->access$000()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    iget-object v3, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;

    iget-object v4, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/hc/client5/http/config/ConnectionConfig;-><init>(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)V

    return-object v0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setConnectTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setSocketTimeout(ILjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    .locals 2

    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object p0
.end method

.method public setTimeToLive(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public setTimeToLive(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public setValidateAfterInactivity(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/hc/core5/util/TimeValue;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method

.method public setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;

    return-object p0
.end method
