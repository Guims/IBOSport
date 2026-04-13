.class final Lorg/apache/hc/client5/http/impl/auth/FixedCredentialsProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/CredentialsProvider;


# instance fields
.field private final credMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/hc/client5/http/auth/AuthScope;",
            "Lorg/apache/hc/client5/http/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/hc/client5/http/auth/AuthScope;",
            "Lorg/apache/hc/client5/http/auth/Credentials;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/FixedCredentialsProvider;->credMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/Credentials;
    .locals 0

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/FixedCredentialsProvider;->credMap:Ljava/util/Map;

    invoke-static {p2, p1}, Lorg/apache/hc/client5/http/impl/auth/CredentialsMatcher;->matchCredentials(Ljava/util/Map;Lorg/apache/hc/client5/http/auth/AuthScope;)Lorg/apache/hc/client5/http/auth/Credentials;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/FixedCredentialsProvider;->credMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
