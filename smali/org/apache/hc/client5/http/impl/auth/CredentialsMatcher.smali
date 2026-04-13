.class final Lorg/apache/hc/client5/http/impl/auth/CredentialsMatcher;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matchCredentials(Ljava/util/Map;Lorg/apache/hc/client5/http/auth/AuthScope;)Lorg/apache/hc/client5/http/auth/Credentials;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/hc/client5/http/auth/AuthScope;",
            "Lorg/apache/hc/client5/http/auth/Credentials;",
            ">;",
            "Lorg/apache/hc/client5/http/auth/AuthScope;",
            ")",
            "Lorg/apache/hc/client5/http/auth/Credentials;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/client5/http/auth/Credentials;

    if-nez v0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-virtual {p1, v4}, Lorg/apache/hc/client5/http/auth/AuthScope;->match(Lorg/apache/hc/client5/http/auth/AuthScope;)I

    move-result v5

    if-le v5, v2, :cond_0

    move-object v3, v4

    move v2, v5

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/client5/http/auth/Credentials;

    return-object p0

    :cond_2
    return-object v0
.end method
