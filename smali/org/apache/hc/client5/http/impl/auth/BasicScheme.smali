.class public Lorg/apache/hc/client5/http/impl/auth/BasicScheme;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/AuthScheme;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/apache/hc/client5/http/auth/AuthStateCacheable;
.end annotation


# static fields
.field private static final LOG:LO5/a;

.field private static final serialVersionUID:J = -0x1ace521904dddd88L


# instance fields
.field private transient base64codec:Lorg/apache/hc/client5/http/utils/Base64;

.field private transient buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

.field private complete:Z

.field private transient defaultCharset:Ljava/nio/charset/Charset;

.field private final paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private password:[C

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->paramMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->defaultCharset:Ljava/nio/charset/Charset;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->complete:Z

    return-void
.end method

.method private applyCredentials(Lorg/apache/hc/client5/http/auth/Credentials;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/hc/client5/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->username:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/hc/client5/http/auth/Credentials;->getPassword()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->password:[C

    return-void
.end method

.method private clearCredentials()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->username:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->password:[C

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->defaultCharset:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->defaultCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private readObjectNoData()V
    .locals 0

    return-void
.end method

.method private validateUsername()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->username:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->username:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string v1, "Username contains a colon character and is invalid"

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string v1, "Username must not contain any control characters"

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string v1, "User credentials not set"

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->validateUsername()V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->reset()V

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->paramMap:Ljava/util/Map;

    const-string p2, "charset"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/impl/auth/AuthSchemeSupport;->parseCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {p2, p1}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->charset(Ljava/nio/charset/Charset;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append(Ljava/lang/String;)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->password:[C

    invoke-virtual {p1, p2}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->append([C)Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->base64codec:Lorg/apache/hc/client5/http/utils/Base64;

    if-nez p1, :cond_1

    new-instance p1, Lorg/apache/hc/client5/http/utils/Base64;

    invoke-direct {p1}, Lorg/apache/hc/client5/http/utils/Base64;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->base64codec:Lorg/apache/hc/client5/http/utils/Base64;

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->base64codec:Lorg/apache/hc/client5/http/utils/Base64;

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/hc/client5/http/utils/Base64;->encode([B)[B

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->buffer:Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/utils/ByteArrayBuilder;->reset()V

    new-instance p2, Ljava/lang/String;

    array-length p3, p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string p1, "Basic "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Basic"

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->paramMap:Ljava/util/Map;

    const-string v1, "realm"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public initPreemptive(Lorg/apache/hc/client5/http/auth/Credentials;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->applyCredentials(Lorg/apache/hc/client5/http/auth/Credentials;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->clearCredentials()V

    return-void
.end method

.method public isChallengeComplete()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isResponseReady(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 3

    const-string v0, "Auth host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CredentialsProvider"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/hc/client5/http/auth/AuthScope;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0, p3}, Lorg/apache/hc/client5/http/auth/CredentialsProvider;->getCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/Credentials;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->applyCredentials(Lorg/apache/hc/client5/http/auth/Credentials;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "{} No credentials found for auth scope [{}]"

    invoke-interface {p1, p2, v0, p3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->clearCredentials()V

    const/4 p1, 0x0

    return p1
.end method

.method public processChallenge(Lorg/apache/hc/client5/http/auth/AuthChallenge;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 3

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->paramMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthChallenge;->getParams()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/hc/core5/http/NameValuePair;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->paramMap:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->complete:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/BasicScheme;->paramMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
