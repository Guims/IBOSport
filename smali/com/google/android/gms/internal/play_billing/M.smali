.class public final Lcom/google/android/gms/internal/play_billing/M;
.super Lcom/google/android/gms/internal/play_billing/N;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final q:Lcom/google/android/gms/internal/play_billing/M;

.field public static final r:Lcom/google/android/gms/internal/play_billing/M;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/M;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/M;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/M;->q:Lcom/google/android/gms/internal/play_billing/M;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/M;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/M;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/M;->r:Lcom/google/android/gms/internal/play_billing/M;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/M;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/M;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/O;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/O;

    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/O;->b:Lcom/google/android/gms/internal/play_billing/v;

    iget-object v1, p2, Lcom/google/android/gms/internal/play_billing/O;->b:Lcom/google/android/gms/internal/play_billing/v;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/t;->a:Lcom/google/android/gms/internal/play_billing/q;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/q;->b(Lcom/google/android/gms/internal/play_billing/v;Lcom/google/android/gms/internal/play_billing/v;)Lcom/google/android/gms/internal/play_billing/t;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/O;->q:Lcom/google/android/gms/internal/play_billing/v;

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/O;->q:Lcom/google/android/gms/internal/play_billing/v;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/t;->b(Lcom/google/android/gms/internal/play_billing/v;Lcom/google/android/gms/internal/play_billing/v;)Lcom/google/android/gms/internal/play_billing/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/t;->a()I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/M;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Ordering.natural()"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
