.class public final LD0/u;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroidx/media3/common/TrackGroup;

.field public final b:[I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;[I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p3

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v0, "ETSDefinition"

    const-string v1, "Empty tracks are not allowed"

    invoke-static {v0, v1, p1}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iput-object p2, p0, LD0/u;->a:Landroidx/media3/common/TrackGroup;

    iput-object p3, p0, LD0/u;->b:[I

    return-void
.end method
