.class public final synthetic Lq0/g;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/n;


# instance fields
.field public final synthetic b:Lq0/b;

.field public final synthetic q:I

.field public final synthetic r:J

.field public final synthetic s:J


# direct methods
.method public synthetic constructor <init>(Lq0/b;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/g;->b:Lq0/b;

    iput p2, p0, Lq0/g;->q:I

    iput-wide p3, p0, Lq0/g;->r:J

    iput-wide p5, p0, Lq0/g;->s:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-wide v5, p0, Lq0/g;->s:J

    move-object v0, p1

    check-cast v0, Lq0/c;

    iget-object v1, p0, Lq0/g;->b:Lq0/b;

    iget v2, p0, Lq0/g;->q:I

    iget-wide v3, p0, Lq0/g;->r:J

    invoke-interface/range {v0 .. v6}, Lq0/c;->e(Lq0/b;IJJ)V

    return-void
.end method
