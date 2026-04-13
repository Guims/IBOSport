.class public final synthetic Lorg/apache/hc/core5/http/io/entity/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Supplier;


# instance fields
.field public final synthetic a:[Lorg/apache/hc/core5/http/Header;


# direct methods
.method public synthetic constructor <init>([Lorg/apache/hc/core5/http/Header;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/a;->a:[Lorg/apache/hc/core5/http/Header;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/a;->a:[Lorg/apache/hc/core5/http/Header;

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/HttpEntities$2;->a([Lorg/apache/hc/core5/http/Header;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
