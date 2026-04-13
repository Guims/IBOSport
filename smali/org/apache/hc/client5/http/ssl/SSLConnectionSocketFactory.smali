.class public Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/socket/LayeredConnectionSocketFactory;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;

.field private static final WEAK_CIPHERS:Ljava/lang/String; = "^(TLS|SSL)_(.*)_WITH_(NULL|DES_CBC|DES40_CBC|DES_CBC_40|3DES_EDE_CBC|RC4_128|RC4_40|RC2_CBC_40)_(.*)"

.field private static final WEAK_CIPHER_SUITE_PATTERNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEAK_KEY_EXCHANGES:Ljava/lang/String; = "^(TLS|SSL)_(NULL|ECDH_anon|DH_anon|DH_anon_EXPORT|DHE_RSA_EXPORT|DHE_DSS_EXPORT|DSS_EXPORT|DH_DSS_EXPORT|DH_RSA_EXPORT|RSA_EXPORT|KRB5_EXPORT)_(.*)"


# instance fields
.field private final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final socketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final supportedCipherSuites:[Ljava/lang/String;

.field private final supportedProtocols:[Ljava/lang/String;

.field private final tlsSessionValidator:Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^(TLS|SSL)_(NULL|ECDH_anon|DH_anon|DH_anon_EXPORT|DHE_RSA_EXPORT|DHE_DSS_EXPORT|DSS_EXPORT|DH_DSS_EXPORT|DH_RSA_EXPORT|RSA_EXPORT|KRB5_EXPORT)_(.*)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v2, "^(TLS|SSL)_(.*)_WITH_(NULL|DES_CBC|DES40_CBC|DES_CBC_40|3DES_EDE_CBC|RC4_128|RC4_40|RC2_CBC_40)_(.*)"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->WEAK_CIPHER_SUITE_PATTERNS:Ljava/util/List;

    const-class v0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    const-string v0, "SSL context"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    const-string v0, "SSL context"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSL socket factory"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p2, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->supportedProtocols:[Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    new-instance p1, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;

    sget-object p2, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->LOG:LO5/a;

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;-><init>(LO5/a;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->tlsSessionValidator:Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;

    return-void
.end method

.method public static synthetic a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->lambda$connectSocket$0(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private executeHandshake(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p3, Lorg/apache/hc/client5/http/config/TlsConfig;

    if-eqz v0, :cond_0

    check-cast p3, Lorg/apache/hc/client5/http/config/TlsConfig;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/hc/client5/http/config/TlsConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/TlsConfig;

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->supportedProtocols:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http/ssl/TLS;->excludeWeak([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->excludeWeak([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p3}, Lorg/apache/hc/client5/http/config/TlsConfig;->getHandshakeTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    sget-object v0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Enabled protocols: {}"

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Enabled cipher suites: {}"

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Starting handshake ({})"

    invoke-interface {v0, p3, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    return-void
.end method

.method public static getSocketFactory()Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;
    .locals 3

    new-instance v0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;

    invoke-static {}, Lorg/apache/hc/core5/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    return-object v0
.end method

.method public static getSystemSocketFactory()Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;
    .locals 5

    new-instance v0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getSystemProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getSystemCipherSuits()[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    return-object v0
.end method

.method public static isWeakCipherSuite(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->WEAK_CIPHER_SUITE_PATTERNS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$connectSocket$0(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lorg/apache/hc/core5/util/Timeout;->defaultsToDisabled(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/TimeValue;->toMillisecondsIntBound()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, v0}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->verifySession(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)V

    return-void

    :cond_1
    new-instance p2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v0, "SSL session not available"

    invoke-direct {p2, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p1}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
    .locals 2

    const-string v1, "method contract violation only checked exceptions are wrapped: "

    const-string v0, "HTTP host"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Remote address"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p7}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->createSocket(Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p1

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p1, p4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    :try_start_0
    sget-object p4, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->LOG:LO5/a;

    invoke-interface {p4}, LO5/a;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "Connecting socket to {} with timeout {}"

    invoke-interface {p4, p3, p5, v0}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p2, v0

    move-object p3, p1

    goto :goto_3

    :cond_2
    :goto_1
    :try_start_2
    new-instance p4, Lorg/apache/hc/client5/http/ssl/d;

    invoke-direct {p4, p1, p3, p5}, Lorg/apache/hc/client5/http/ssl/d;-><init>(Ljava/net/Socket;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;)V

    invoke-static {p4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    instance-of p4, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p4, :cond_3

    move-object p3, p1

    check-cast p3, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2, p6}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->executeHandshake(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p5

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v0

    move-object p3, p1

    :goto_2
    move-object p2, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p3, p1

    move-object p1, v0

    :try_start_3
    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lorg/apache/hc/core5/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move-exception v0

    goto :goto_2

    :goto_3
    invoke-static {p3}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public connectSocket(Lorg/apache/hc/core5/util/TimeValue;Ljava/net/Socket;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/apache/hc/core5/util/Timeout;->of(JLjava/util/concurrent/TimeUnit;)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    move-object v6, v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->connectSocket(Ljava/net/Socket;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
    .locals 1

    iget-object p5, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v0, 0x1

    invoke-virtual {p5, p1, p2, p3, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p1, p2, p4}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->executeHandshake(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/Socket;
    .locals 0

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public prepareSocket(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public verifySession(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->tlsSessionValidator:Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;

    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/SSLConnectionSocketFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->verifySession(Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method
