.class Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecInterceptorEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;
    }
.end annotation


# instance fields
.field final existing:Ljava/lang/String;

.field final interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

.field final name:Ljava/lang/String;

.field final position:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;


# direct methods
.method private constructor <init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->interceptor:Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;->existing:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$ExecInterceptorEntry$Position;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChainHandler;Ljava/lang/String;)V

    return-void
.end method
