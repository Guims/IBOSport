.class public LB4/v;
.super LB4/s;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LB4/s<",
        "Lx4/k;",
        ">;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# static fields
.field public static final synthetic L1:I


# instance fields
.field public A1:Landroid/widget/ImageButton;

.field public B1:Landroid/widget/ImageButton;

.field public C1:Landroid/widget/ImageButton;

.field public D1:Landroid/widget/ImageButton;

.field public E1:Landroid/widget/ImageButton;

.field public F1:Landroid/widget/SeekBar;

.field public G1:Landroid/widget/SeekBar;

.field public H1:Landroid/view/View;

.field public I1:Z

.field public J1:Landroid/media/AudioManager;

.field public K1:I

.field public w1:Landroid/widget/ImageButton;

.field public x1:Landroid/widget/ImageButton;

.field public y1:Landroid/widget/ImageButton;

.field public z1:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LB4/s;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LB4/v;->I1:Z

    return-void
.end method


# virtual methods
.method public final Q(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LC1/a;
    .locals 3

    sget v0, Lx4/k;->R:I

    sget-object v0, Landroidx/databinding/b;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    const v1, 0x7f0e0051

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Landroidx/databinding/e;->Z(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    check-cast p1, Lx4/k;

    return-object p1
.end method

.method public final i0()V
    .locals 3

    invoke-static {}, Lib/player/base/l;->w()V

    invoke-static {}, Lib/player/base/l;->w()V

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v1, v0, Lx4/k;->L:Lib/player/base/view/LiveVerticalGridView;

    iput-object v1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    iget-object v1, v0, Lx4/k;->M:Lib/player/base/view/LiveVerticalGridView;

    iput-object v1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    iget-object v1, v0, Lx4/k;->N:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LB4/s;->O0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Lx4/k;->B:Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, v0, Lx4/k;->C:Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, v0, Lx4/k;->K:Landroidx/media3/ui/PlayerView;

    iput-object v1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    iget-object v1, v0, Lx4/k;->D:Landroid/widget/EditText;

    iput-object v1, p0, LB4/s;->n1:Landroid/widget/EditText;

    iget-object v1, v0, Lx4/k;->E:Landroid/widget/EditText;

    iput-object v1, p0, LB4/s;->m1:Landroid/widget/EditText;

    iget-object v1, v0, Lx4/k;->P:Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->e1:Landroid/widget/TextView;

    iget-object v1, v0, Lx4/k;->F:Landroid/view/View;

    iput-object v1, p0, LB4/s;->S0:Landroid/view/View;

    iget-object v2, v0, Lx4/k;->H:Landroid/widget/ImageView;

    iput-object v2, p0, LB4/s;->k1:Landroid/widget/ImageView;

    iget-object v2, v0, Lx4/k;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, LB4/s;->T0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v0, Lx4/k;->Q:Landroid/widget/TextView;

    iput-object v2, p0, LB4/s;->f1:Landroid/widget/TextView;

    iget-object v2, v0, Lx4/k;->I:Landroid/widget/ImageView;

    iput-object v2, p0, LB4/s;->l1:Landroid/widget/ImageView;

    iget-object v2, v0, Lx4/k;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, LB4/s;->U0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, v0, Lx4/k;->O:Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->W0:Landroid/widget/TextView;

    const v0, 0x7f0b033e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, LB4/s;->V0:Landroid/widget/SeekBar;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b03db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->X0:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b03da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->Y0:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b03f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->a1:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b03f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->Z0:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b03e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->b1:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b03d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->c1:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b03fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->d1:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b03d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->h1:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b03e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->g1:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b03dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->i1:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b00bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, LB4/s;->j1:Landroid/widget/ImageView;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, LB4/s;->o1:Landroid/widget/ImageButton;

    iget-object v1, p0, LB4/s;->m0:LC1/a;

    check-cast v1, Lx4/k;

    iget-object v1, v1, Lx4/k;->F:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, LB4/s;->V0:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b0094

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/v;->z1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b01f4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/v;->A1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b01d4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/v;->B1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b008c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/v;->w1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b0095

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/s;->p1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b0096

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/v;->y1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b00a3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/v;->x1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b025e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b0424

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LB4/v;->H1:Landroid/view/View;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b009b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/v;->D1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b009f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/v;->C1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b00a1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/v;->E1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b0432

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, LB4/v;->G1:Landroid/widget/SeekBar;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/k;

    iget-object v0, v0, Lx4/k;->F:Landroid/view/View;

    const v2, 0x7f0b007f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, LB4/v;->F1:Landroid/widget/SeekBar;

    iget-object v0, p0, LB4/v;->G1:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, LB4/v;->J1:Landroid/media/AudioManager;

    iget-object v0, p0, LB4/v;->G1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, LB4/v;->J1:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, LB4/v;->K1:I

    iget-object v0, p0, LB4/v;->J1:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget v1, p0, LB4/v;->K1:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, LB4/v;->G1:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, LB4/v;->F1:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, LB4/v;->F1:Landroid/widget/SeekBar;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, LB4/v;->F1:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, LB4/s;->o1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/v;->z1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/v;->y1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/s;->p1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/v;->x1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/v;->A1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/v;->B1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/v;->w1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/v;->D1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/v;->C1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/v;->E1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/v;->H1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    new-instance v1, LB4/u;

    invoke-direct {v1, v2, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b008c

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, LB4/s;->t0(Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b008e

    if-eq v0, v1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0094

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01f4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, LB4/s;->d0()V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01d4

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, LB4/s;->a0()V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0092

    iget-object v3, p0, LB4/s;->u0:[I

    const/4 v4, 0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0095

    if-ne v0, v1, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00a3

    if-ne v0, v1, :cond_6

    iget-object p1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getResizeMode()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iget-object p1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1, v2}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    return-void

    :cond_5
    iget-object p1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0096

    const/16 v5, 0x8

    if-ne v0, v1, :cond_7

    iget-object p1, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, LB4/s;->A0()V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0098

    if-ne v0, v1, :cond_b

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_locked_default()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_8
    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    aget v0, v3, v4

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, LB4/s;->v0(Lib/player/models/EPGChannel;II)V

    return-void

    :cond_9
    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    aget v0, v3, v4

    invoke-virtual {p0, p1, v0}, LB4/s;->X(Lib/player/models/EPGChannel;I)V

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {p0, p1}, LB4/s;->z0(Z)V

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b009b

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, LB4/s;->m0()V

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00a1

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, LB4/s;->n0()V

    return-void

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b009f

    if-ne v0, v1, :cond_f

    iget-object p1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v2}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object p1, p0, LB4/v;->C1:Landroid/widget/ImageButton;

    const v0, 0x7f080155

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_e
    iget-object p1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v4}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object p1, p0, LB4/v;->C1:Landroid/widget/ImageButton;

    const v0, 0x7f080153

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0424

    if-ne p1, v0, :cond_12

    iget-object p1, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, LB4/s;->E0:Landroid/os/Handler;

    iget-object v0, p0, LB4/s;->F0:LB4/l;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_10
    :goto_0
    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz p1, :cond_12

    aget v0, v3, v4

    invoke-virtual {p0, p1, v0}, LB4/s;->W(Lib/player/models/EPGChannel;I)V

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {p0, p1}, LB4/s;->x0(Z)V

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_12
    return-void

    :cond_13
    :goto_1
    invoke-virtual {p0}, LB4/s;->f0()V

    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const v0, 0x7f0b0432

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    iget-object p1, p0, LB4/v;->J1:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x64

    iget-object p2, p0, LB4/v;->J1:Landroid/media/AudioManager;

    invoke-virtual {p2, p3, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f0b007f

    if-ne p1, p3, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, LB4/v;->I1:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, LB4/v;->I1:Z

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "package:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "screen_brightness_mode"

    invoke-static {p1, p3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "screen_brightness"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    int-to-float p2, p2

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p2, v0

    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final u0(Z)V
    .locals 0

    return-void
.end method
