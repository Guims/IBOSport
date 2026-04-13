.class public final Lr1/n;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroidx/media3/common/Tracks$Group;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Tracks;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/common/Tracks;->getGroups()Lp3/H;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Tracks$Group;

    iput-object p1, p0, Lr1/n;->a:Landroidx/media3/common/Tracks$Group;

    iput p3, p0, Lr1/n;->b:I

    iput-object p4, p0, Lr1/n;->c:Ljava/lang/String;

    return-void
.end method
