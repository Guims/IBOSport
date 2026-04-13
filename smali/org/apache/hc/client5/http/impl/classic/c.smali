.class public final synthetic Lorg/apache/hc/client5/http/impl/classic/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/c;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/c;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
