.class public abstract Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/AuthScheme;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;
    }
.end annotation


# static fields
.field private static final KERBEROS_SCHEME:Ljava/lang/String; = "HTTP"

.field private static final LOG:LO5/a;

.field private static final NO_TOKEN:Ljava/lang/String; = ""


# instance fields
.field private challenge:Ljava/lang/String;

.field private final config:Lorg/apache/hc/client5/http/auth/KerberosConfig;

.field private final dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

.field private gssCredential:Lorg/ietf/jgss/GSSCredential;

.field private state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

.field private token:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/apache/hc/client5/http/auth/KerberosConfig;->DEFAULT:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    sget-object v1, Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;->INSTANCE:Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;

    invoke-direct {p0, v0, v1}, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;-><init>(Lorg/apache/hc/client5/http/auth/KerberosConfig;Lorg/apache/hc/client5/http/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/auth/KerberosConfig;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;->INSTANCE:Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;-><init>(Lorg/apache/hc/client5/http/auth/KerberosConfig;Lorg/apache/hc/client5/http/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/auth/KerberosConfig;Lorg/apache/hc/client5/http/DnsResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/auth/KerberosConfig;->DEFAULT:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->config:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;->INSTANCE:Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;

    :goto_1
    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;->UNINITIATED:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    return-void
.end method


# virtual methods
.method public createGSSContext(Lorg/ietf/jgss/GSSManager;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/GSSCredential;)Lorg/ietf/jgss/GSSContext;
    .locals 1

    invoke-interface {p3, p2}, Lorg/ietf/jgss/GSSName;->canonicalize(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, p4, v0}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->config:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/auth/KerberosConfig;->getRequestDelegCreds()Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    move-result-object p3

    sget-object p4, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->DEFAULT:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    if-eq p3, p4, :cond_1

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->config:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/auth/KerberosConfig;->getRequestDelegCreds()Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    move-result-object p3

    sget-object p4, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->ENABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    if-ne p3, p4, :cond_0

    move v0, p2

    :cond_0
    invoke-interface {p1, v0}, Lorg/ietf/jgss/GSSContext;->requestCredDeleg(Z)V

    :cond_1
    return-object p1
.end method

.method public generateAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/String;
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p2, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$1;->$SwitchMap$org$apache$hc$client5$http$impl$auth$GGSSchemeBase$State:[I

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_a

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Illegal state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->config:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/KerberosConfig;->getUseCanonicalHostname()Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->DISABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_2

    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->dnsResolver:Lorg/apache/hc/client5/http/DnsResolver;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/hc/client5/http/DnsResolver;->resolveCanonicalHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/ietf/jgss/GSSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->config:Lorg/apache/hc/client5/http/auth/KerberosConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/KerberosConfig;->getStripPort()Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;->DISABLE:Lorg/apache/hc/client5/http/auth/KerberosConfig$Option;

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{} init {}"

    invoke-interface {p1, v0, p2, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->token:[B

    const-string v0, "HTTP"

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->generateToken([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->token:[B

    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;->TOKEN_GENERATED:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;
    :try_end_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    new-instance p1, Lorg/apache/hc/client5/http/utils/Base64;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/utils/Base64;-><init>(I)V

    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->token:[B

    invoke-virtual {p1, v0}, Lorg/apache/hc/client5/http/utils/Base64;->encode([B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "{} Sending response \'{}\' back to the auth server"

    invoke-interface {p1, p3, p2, v0}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    const-string p1, "Negotiate "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_3
    sget-object p2, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;->FAILED:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0x9

    if-eq p2, p3, :cond_9

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_9

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0xd

    if-eq p2, p3, :cond_8

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0xa

    if-eq p2, p3, :cond_7

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0x13

    if-eq p2, p3, :cond_7

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result p2

    const/16 p3, 0x14

    if-ne p2, p3, :cond_6

    goto :goto_4

    :cond_6
    new-instance p2, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    :goto_4
    new-instance p2, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_8
    new-instance p2, Lorg/apache/hc/client5/http/auth/InvalidCredentialsException;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/hc/client5/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    new-instance p2, Lorg/apache/hc/client5/http/auth/InvalidCredentialsException;

    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/hc/client5/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    new-instance p1, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " authentication has failed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " authentication has not been initiated"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->getManager()Lorg/ietf/jgss/GSSManager;

    move-result-object v0

    const-string v1, "@"

    invoke-static {p3, v1, p4}, Lcom/google/android/material/datepicker/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    invoke-virtual {v0, p3, p4}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object p3

    iget-object p4, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->gssCredential:Lorg/ietf/jgss/GSSCredential;

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->createGSSContext(Lorg/ietf/jgss/GSSManager;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/GSSCredential;)Lorg/ietf/jgss/GSSContext;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    array-length p4, p1

    invoke-interface {p2, p1, p3, p4}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, p3, [B

    invoke-interface {p2, p1, p3, p3}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract generateToken([BLjava/lang/String;Ljava/lang/String;)[B
.end method

.method public getManager()Lorg/ietf/jgss/GSSManager;
    .locals 1

    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChallengeComplete()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    sget-object v1, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;->TOKEN_GENERATED:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;->FAILED:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isResponseReady(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/CredentialsProvider;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 3

    const-string v0, "Auth host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CredentialsProvider"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-interface {p0}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lorg/apache/hc/client5/http/auth/AuthScope;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0, p3}, Lorg/apache/hc/client5/http/auth/CredentialsProvider;->getCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/Credentials;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/hc/client5/http/auth/KerberosCredentials;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/hc/client5/http/auth/KerberosCredentials;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/KerberosCredentials;->getGSSCredential()Lorg/ietf/jgss/GSSCredential;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->gssCredential:Lorg/ietf/jgss/GSSCredential;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->gssCredential:Lorg/ietf/jgss/GSSCredential;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public processChallenge(Lorg/apache/hc/client5/http/auth/AuthChallenge;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    const-string v0, "AuthChallenge"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthChallenge;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthChallenge;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->challenge:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    sget-object v1, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;->UNINITIATED:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/Base64;->decodeBase64([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->token:[B

    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;->CHALLENGE_RECEIVED:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    return-void

    :cond_1
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "{} Authentication already attempted"

    invoke-interface {p1, p2, v0}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;->FAILED:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/hc/client5/http/auth/AuthScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/GGSSchemeBase;->challenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
