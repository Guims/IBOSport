.class public final synthetic LA4/g;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/q;


# instance fields
.field public final synthetic b:LA4/k;

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(LA4/k;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA4/g;->b:LA4/k;

    iput p2, p0, LA4/g;->q:I

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    check-cast p3, Lib/player/models/BaseModel;

    iget-object v0, p0, LA4/g;->b:LA4/k;

    iget-object v0, v0, LA4/k;->f:LA4/b;

    iget v1, p0, LA4/g;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, LA4/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
