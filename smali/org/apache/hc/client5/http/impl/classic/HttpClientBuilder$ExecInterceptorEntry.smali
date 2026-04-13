.class Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecInterceptorEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;
    }
.end annotation


# instance fields
.field final existing:Ljava/lang/String;

.field final interceptor:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

.field final name:Ljava/lang/String;

.field final position:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;


# direct methods
.method private constructor <init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/classic/ExecChainHandler;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/classic/ExecChainHandler;Ljava/lang/String;)V

    return-void
.end method
