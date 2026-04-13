.class public final Lr0/r;
.super Ljava/lang/Exception;


# instance fields
.field public final b:I

.field public final q:Z

.field public final r:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(ILandroidx/media3/common/Format;Z)V
    .locals 1

    const-string v0, "AudioTrack write failed: "

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Lr0/r;->q:Z

    iput p1, p0, Lr0/r;->b:I

    iput-object p2, p0, Lr0/r;->r:Landroidx/media3/common/Format;

    return-void
.end method
