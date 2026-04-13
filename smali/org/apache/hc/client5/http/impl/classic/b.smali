.class public final synthetic Lorg/apache/hc/client5/http/impl/classic/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic b:Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/b;->b:Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/b;->b:Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->b(Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;)V

    return-void
.end method
