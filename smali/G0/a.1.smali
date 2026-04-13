.class public final LG0/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:LG0/z;

.field public final b:LG0/D;

.field public c:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(LG0/z;LG0/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/a;->a:LG0/z;

    iput-object p2, p0, LG0/a;->b:LG0/D;

    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, LG0/a;->c:Landroidx/media3/common/Format;

    return-void
.end method
