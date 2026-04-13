.class public Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/AuthCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;",
            "[B>;"
        }
    .end annotation
.end field

.field private final schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->map:Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    return-void
.end method

.method private key(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;
    .locals 3

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    invoke-interface {v2, p1, p2}, Lorg/apache/hc/client5/http/SchemePortResolver;->resolve(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)I

    move-result p2

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthScheme;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->get(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/auth/AuthScheme;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/auth/AuthScheme;
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->key(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/client5/http/auth/AuthScheme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    sget-object p2, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unexpected error while de-serializing auth scheme"

    invoke-interface {p2, v0, p1}, LO5/a;->A(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :goto_2
    sget-object p2, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unexpected I/O error while de-serializing auth scheme"

    invoke-interface {p2, v0, p1}, LO5/a;->A(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScheme;)V
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p3, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->key(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    sget-object p2, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->LOG:LO5/a;

    invoke-interface {p2}, LO5/a;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "Unexpected I/O error while serializing auth scheme"

    invoke-interface {p2, p3, p1}, LO5/a;->A(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Auth scheme {} is not serializable"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public put(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/AuthScheme;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->put(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScheme;)V

    return-void
.end method

.method public remove(Lorg/apache/hc/core5/http/HttpHost;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->remove(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    return-void
.end method

.method public remove(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->key(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/String;)Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache$Key;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicAuthCache;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
