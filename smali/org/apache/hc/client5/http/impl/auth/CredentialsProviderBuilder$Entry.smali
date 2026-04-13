.class Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder$Entry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field final authScope:Lorg/apache/hc/client5/http/auth/AuthScope;

.field final credentials:Lorg/apache/hc/client5/http/auth/Credentials;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/client5/http/auth/Credentials;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder$Entry;->authScope:Lorg/apache/hc/client5/http/auth/AuthScope;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/auth/CredentialsProviderBuilder$Entry;->credentials:Lorg/apache/hc/client5/http/auth/Credentials;

    return-void
.end method
