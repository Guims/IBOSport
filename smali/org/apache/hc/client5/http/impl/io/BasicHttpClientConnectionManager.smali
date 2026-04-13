.class public Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final COUNT:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final LOG:LO5/a;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

.field private final connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

.field private final connectionOperator:Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

.field private created:J

.field private expiry:J

.field private final id:Ljava/lang/String;

.field private leased:Z

.field private route:Lorg/apache/hc/client5/http/HttpRoute;

.field private socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

.field private state:Ljava/lang/Object;

.field private tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

.field private updated:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->LOG:LO5/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->COUNT:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection operator"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    sget-object p1, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->COUNT:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ep-%010d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->expiry:J

    sget-object p1, Lorg/apache/hc/core5/http/io/SocketConfig;->DEFAULT:Lorg/apache/hc/core5/http/io/SocketConfig;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    sget-object p1, Lorg/apache/hc/client5/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    sget-object p1, Lorg/apache/hc/client5/http/config/TlsConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/TlsConfig;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;-><init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/hc/client5/http/SchemePortResolver;",
            "Lorg/apache/hc/client5/http/DnsResolver;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;

    invoke-direct {v0, p1, p3, p4}, Lorg/apache/hc/client5/http/impl/io/DefaultHttpClientConnectionOperator;-><init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;-><init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;Lorg/apache/hc/core5/http/io/HttpConnectionFactory;)V

    return-void
.end method

.method public static synthetic access$000()LO5/a;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->LOG:LO5/a;

    return-object v0
.end method

.method public static synthetic access$100(Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    return-object p0
.end method

.method private cast(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;
    .locals 3

    instance-of v0, p1, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected endpoint class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkExpiry()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->expiry:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    iget-wide v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->expiry:J

    invoke-static {v2, v3}, LW3/h;->o(J)Ljava/time/Instant;

    move-result-object v2

    const-string v3, "{} Connection expired @ {}"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->closeConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized closeConnection(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} Closing connection {}"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static getDefaultRegistry()Lorg/apache/hc/core5/http/config/Registry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/config/Registry<",
            "Lorg/apache/hc/client5/http/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v1, v1, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    invoke-static {}, Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;->getSocketFactory()Lorg/apache/hc/client5/http/socket/PlainConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v1, v1, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->getSocketFactory()Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object v0

    return-object v0
.end method

.method private validate()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getTimeToLive()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/TimeValue;->isNonNegative(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->created:J

    invoke-static {v1, v2, v0}, Lorg/apache/hc/core5/util/Deadline;->calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Deadline;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->closeConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/hc/core5/util/TimeValue;->isNonNegative(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->updated:J

    invoke-static {v1, v2, v0}, Lorg/apache/hc/core5/util/Deadline;->calculate(JLorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/core5/util/Deadline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/Deadline;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/io/BHttpConnection;->isStale()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-static {v2}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{} connection {} is stale"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->closeConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->closeConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized closeExpired()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->leased:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->checkExpiry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized closeIdle(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "Idle time"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->leased:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->updated:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_2

    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->closeConnection(Lorg/apache/hc/core5/io/CloseMode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized connect(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "Endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->cast(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->getRoute()Lorg/apache/hc/client5/http/HttpRoute;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    :goto_0
    move-object v5, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_1
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/TimeValue;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-static {v2, v3, p2}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p2

    :goto_2
    move-object v7, p2

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getConnectTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p2

    goto :goto_2

    :goto_3
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->getConnection()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object v4

    sget-object p2, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "{} connecting endpoint to {} ({})"

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v5, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0, v2}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/HttpRoute;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;

    iget-object v9, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    move-object v10, p3

    invoke-interface/range {v3 .. v10}, Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;->connect(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/io/SocketConfig;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-interface {p2}, LO5/a;->c()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "{} connected {}"

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0, p3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {v4, p1}, Lorg/apache/hc/core5/http/SocketModalCloseable;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getConnection(Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Connection manager has been shut down"

    invoke-static {v0, v2}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "{} Get connection for route {}"

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    invoke-interface {v0, v3, p1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->leased:Z

    xor-int/2addr v2, v1

    const-string v3, "Connection %s is still allocated"

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-static {v2, v3, v4}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->route:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-static {v2, p1}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    invoke-static {v2, p2}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-direct {p0, v2}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->closeConnection(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_2
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->checkExpiry()V

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->validate()V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/io/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/HttpConnection;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->created:J

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;->activate()V

    :goto_1
    iput-boolean v1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->leased:Z

    invoke-interface {v0}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "{} Using connection {}"

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-interface {v0, p2, v1, p1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getConnectionConfig()Lorg/apache/hc/client5/http/config/ConnectionConfig;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRoute()Lorg/apache/hc/client5/http/HttpRoute;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->route:Lorg/apache/hc/client5/http/HttpRoute;

    return-object v0
.end method

.method public declared-synchronized getSocketConfig()Lorg/apache/hc/core5/http/io/SocketConfig;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getTlsConfig()Lorg/apache/hc/client5/http/config/TlsConfig;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getValidateAfterInactivity()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/LeaseRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/util/Timeout;->DISABLED:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/LeaseRequest;

    move-result-object p1

    return-object p1
.end method

.method public lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/LeaseRequest;
    .locals 0

    new-instance p1, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$1;

    invoke-direct {p1, p0, p2, p4}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$1;-><init>(Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;)V

    return-object p1
.end method

.method public declared-synchronized release(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "Managed endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->cast(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->detach()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object p1

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} Releasing connection {}"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    if-nez p3, :cond_2

    :try_start_1
    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    sget-object v3, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {v2, v3}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->updated:J

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-interface {v2}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    invoke-interface {v2}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->isConsistent()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->conn:Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    iput-wide v3, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->expiry:J

    invoke-interface {v0}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "{} Connection is not kept alive"

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    invoke-interface {v0, p2, p1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;->passivate()V

    :cond_4
    invoke-static {p3}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v0}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "{} Connection can be kept alive for {}"

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    invoke-interface {v0, p2, p3, p1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    iget-wide p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->updated:J

    invoke-virtual {p3}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v2

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->expiry:J

    goto :goto_2

    :cond_6
    invoke-interface {v0}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "{} Connection can be kept alive indefinitely"

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->id:Ljava/lang/String;

    invoke-interface {v0, p2, p1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    iput-wide v3, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->expiry:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    :goto_2
    :try_start_2
    iput-boolean v1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->leased:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    iput-boolean v1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->leased:Z

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized setConnectionConfig(Lorg/apache/hc/client5/http/config/ConnectionConfig;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p1, Lorg/apache/hc/client5/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSocketConfig(Lorg/apache/hc/core5/http/io/SocketConfig;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p1, Lorg/apache/hc/core5/http/io/SocketConfig;->DEFAULT:Lorg/apache/hc/core5/http/io/SocketConfig;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->socketConfig:Lorg/apache/hc/core5/http/io/SocketConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTlsConfig(Lorg/apache/hc/client5/http/config/TlsConfig;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p1, Lorg/apache/hc/client5/http/config/TlsConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/TlsConfig;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->custom()Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->setValidateAfterInactivity(Lorg/apache/hc/core5/util/TimeValue;)Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/ConnectionConfig$Builder;->build()Lorg/apache/hc/client5/http/config/ConnectionConfig;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    return-void
.end method

.method public declared-synchronized upgrade(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Endpoint"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->route:Lorg/apache/hc/client5/http/HttpRoute;

    const-string v1, "HTTP route"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->cast(Lorg/apache/hc/client5/http/io/ConnectionEndpoint;)Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->connectionOperator:Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->getConnection()Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;->getRoute()Lorg/apache/hc/client5/http/HttpRoute;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    invoke-interface {v0, v1, p1, v2, p2}, Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;->upgrade(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
