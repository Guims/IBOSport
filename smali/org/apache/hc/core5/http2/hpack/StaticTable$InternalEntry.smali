.class Lorg/apache/hc/core5/http2/hpack/StaticTable$InternalEntry;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/hpack/HPackEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http2/hpack/StaticTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalEntry"
.end annotation


# instance fields
.field private final header:Lorg/apache/hc/core5/http2/hpack/HPackHeader;

.field private final index:I


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/hpack/HPackHeader;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable$InternalEntry;->header:Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    iput p2, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable$InternalEntry;->index:I

    return-void
.end method


# virtual methods
.method public getHeader()Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable$InternalEntry;->header:Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable$InternalEntry;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
