.class public final Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/AuthScheme;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;
    }
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private challenge:Ljava/lang/String;

.field private credentials:Lorg/apache/hc/client5/http/auth/NTCredentials;

.field private final engine:Lorg/apache/hc/client5/http/impl/auth/NTLMEngine;

.field private state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;-><init>(Lorg/apache/hc/client5/http/impl/auth/NTLMEngine;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/impl/auth/NTLMEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NTLM engine"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->engine:Lorg/apache/hc/client5/http/impl/auth/NTLMEngine;

    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    return-void
.end method


# virtual methods
.method public generateAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/String;
    .locals 6

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->credentials:Lorg/apache/hc/client5/http/auth/NTCredentials;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    sget-object p3, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    if-eq p2, p3, :cond_2

    sget-object p3, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->engine:Lorg/apache/hc/client5/http/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/NTCredentials;->getNetbiosDomain()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->credentials:Lorg/apache/hc/client5/http/auth/NTCredentials;

    invoke-virtual {p3}, Lorg/apache/hc/client5/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEIVED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    if-ne p2, p3, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->engine:Lorg/apache/hc/client5/http/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->credentials:Lorg/apache/hc/client5/http/auth/NTCredentials;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/NTCredentials;->getPassword()[C

    move-result-object v2

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->credentials:Lorg/apache/hc/client5/http/auth/NTCredentials;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/NTCredentials;->getNetbiosDomain()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->credentials:Lorg/apache/hc/client5/http/auth/NTCredentials;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    :goto_0
    const-string p2, "NTLM "

    invoke-static {p2, p1}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string p2, "NTLM authentication failed"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/hc/client5/http/auth/AuthenticationException;

    const-string p2, "NT credentials not available"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NTLM"

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->credentials:Lorg/apache/hc/client5/http/auth/NTCredentials;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/NTCredentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    :cond_0
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

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

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

.method public isConnectionBased()Z
    .locals 1

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

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/hc/client5/http/auth/AuthScope;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0, p3}, Lorg/apache/hc/client5/http/auth/CredentialsProvider;->getCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/Credentials;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/hc/client5/http/auth/NTCredentials;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/hc/client5/http/auth/NTCredentials;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->credentials:Lorg/apache/hc/client5/http/auth/NTCredentials;

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->LOG:LO5/a;

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
    const/4 p1, 0x0

    return p1
.end method

.method public processChallenge(Lorg/apache/hc/client5/http/auth/AuthChallenge;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    const-string p2, "AuthChallenge"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthChallenge;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    sget-object p2, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    if-ne p1, p2, :cond_1

    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEIVED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    :cond_1
    return-void

    :cond_2
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    new-instance p1, Lorg/apache/hc/client5/http/auth/MalformedChallengeException;

    const-string p2, "Out of sequence NTLM response message"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    sget-object p2, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    if-ne p1, p2, :cond_4

    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    return-void

    :cond_4
    sget-object p1, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->state:Lorg/apache/hc/client5/http/impl/auth/NTLMScheme$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
