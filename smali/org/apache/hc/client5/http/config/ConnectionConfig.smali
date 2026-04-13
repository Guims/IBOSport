.class public Lorg/apache/hc/client5/http/config/ConnectionConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/hc/client5/http/config/ConnectionConfig;

.field private static final DEFAULT_CONNECT_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;


# instance fields
.field private final connectTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final socketTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final timeToLive:Lorg/apache/hc/core5/util/TimeValue;

.field private final validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofMinutes(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->DEFAULT_CONNECT_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    new-instance v0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->build()Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->DEFAULT_CONNECT_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lorg/apache/hc/client5/http/config/ConnectionConfig;-><init>(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p2, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p3, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;

    iput-object p4, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->DEFAULT_CONNECT_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public static copy(Lorg/apache/hc/client5/http/config/ConnectionConfig;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->setConnectTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getTimeToLive()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->setTimeToLive(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->clone()Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/config/ConnectionConfig;

    return-object v0
.end method

.method public getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public getTimeToLive()Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    return-object v0
.end method

.method public getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[connectTimeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", socketTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validateAfterInactivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->validateAfterInactivity:Lorg/apache/hc/core5/util/TimeValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeToLive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/config/ConnectionConfig;->timeToLive:Lorg/apache/hc/core5/util/TimeValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
