.class public final synthetic Lib/player/base/helper/z;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/x;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic q:Z

.field public final synthetic r:J

.field public final synthetic s:I

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lib/player/base/helper/z;->b:Ljava/lang/String;

    iput-boolean p6, p0, Lib/player/base/helper/z;->q:Z

    iput-wide p1, p0, Lib/player/base/helper/z;->r:J

    iput p5, p0, Lib/player/base/helper/z;->s:I

    iput-object p4, p0, Lib/player/base/helper/z;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j(Lio/realm/y;)V
    .locals 3

    const-class v0, Lib/player/models/MovieModel;

    const-string v1, "stream_id"

    iget-object v2, p0, Lib/player/base/helper/z;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/datepicker/e;->c(Lio/realm/y;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/realm/M;

    move-result-object p1

    check-cast p1, Lib/player/models/MovieModel;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lib/player/base/helper/z;->q:Z

    invoke-virtual {p1, v0}, Lib/player/models/MovieModel;->setIs_recent(Z)V

    iget-wide v0, p0, Lib/player/base/helper/z;->r:J

    invoke-virtual {p1, v0, v1}, Lib/player/models/MovieModel;->setTime(J)V

    iget v0, p0, Lib/player/base/helper/z;->s:I

    invoke-virtual {p1, v0}, Lib/player/models/MovieModel;->setPro(I)V

    iget-object v0, p0, Lib/player/base/helper/z;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lib/player/models/MovieModel;->setTmdb_id(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
