/* (c) 2019 by Panayotis Katsaloulis
 *
 * CrossMobile is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 2.
 *
 * CrossMobile is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with CrossMobile; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */
package org.crossmobile.gui.elements;

import org.crossmobile.gui.ProjectFrame;
import org.crossmobile.gui.actives.ActiveLabel;
import org.crossmobile.gui.actives.ActivePanel;
import org.crossmobile.gui.actives.ActiveTextField;

public class PrivateArtifactForm extends javax.swing.JDialog {

    public static BottomPanel getPanel() {
        return new BottomPanel("Create", null, frame -> {
            PrivateArtifactForm form = new PrivateArtifactForm(frame);
            form.setVisible(true);
            String signature = form.getSignature();
            if (signature != null)
                frame.installPrivateArtifact(signature + ":aar");
        });
    }

    private PrivateArtifactForm(ProjectFrame frame) {
        super(frame, true);
        initComponents();
        setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel4 = new GradientPanel();
        jPanel5 = new ActivePanel();
        infoP = new ActivePanel();
        jPanel3 = new ActivePanel();
        jLabel3 = new ActiveLabel();
        jLabel4 = new ActiveLabel();
        jLabel1 = new ActiveLabel();
        jPanel2 = new ActivePanel();
        groupT = new ActiveTextField();
        artifactT = new ActiveTextField();
        versionT = new ActiveTextField();
        jPanel1 = new ActivePanel();
        installB = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Please select artifact");
        setResizable(false);
        getContentPane().setLayout(new java.awt.BorderLayout());

        jPanel4.setLayout(new java.awt.BorderLayout());

        jPanel5.setLayout(new java.awt.CardLayout());

        infoP.setBorder(javax.swing.BorderFactory.createEmptyBorder(8, 8, 16, 8));
        infoP.setLayout(new java.awt.BorderLayout());

        jPanel3.setLayout(new java.awt.GridLayout(0, 1, 5, 2));

        jLabel3.setText("Group");
        jPanel3.add(jLabel3);

        jLabel4.setText("Artifact");
        jPanel3.add(jLabel4);

        jLabel1.setText("Version");
        jPanel3.add(jLabel1);

        infoP.add(jPanel3, java.awt.BorderLayout.WEST);

        jPanel2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 12, 0, 0));
        jPanel2.setLayout(new java.awt.GridLayout(0, 1, 0, 3));

        groupT.setColumns(30);
        groupT.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                dataTyped(evt);
            }
        });
        jPanel2.add(groupT);

        artifactT.setColumns(30);
        artifactT.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                dataTyped(evt);
            }
        });
        jPanel2.add(artifactT);

        versionT.setColumns(30);
        versionT.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                dataTyped(evt);
            }
        });
        jPanel2.add(versionT);

        infoP.add(jPanel2, java.awt.BorderLayout.CENTER);

        jPanel5.add(infoP, "info");

        jPanel4.add(jPanel5, java.awt.BorderLayout.PAGE_START);

        jPanel1.setLayout(new java.awt.FlowLayout(2));

        installB.setText("Install");
        installB.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                installBActionPerformed(evt);
            }
        });
        jPanel1.add(installB);

        jPanel4.add(jPanel1, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel4, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void installBActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_installBActionPerformed
        setVisible(false);
    }//GEN-LAST:event_installBActionPerformed

    private void dataTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_dataTyped
        groupT.setText(groupT.getText().trim());
        artifactT.setText(artifactT.getText().trim());
        versionT.setText(versionT.getText().trim());
        installB.setEnabled(isDataValid());
    }//GEN-LAST:event_dataTyped

    public String getSignature() {
        return isDataValid()
                ? groupT.getText() + ":" + artifactT.getText() + ":" + versionT.getText()
                : null;
    }

    public boolean isDataValid() {
        return !groupT.getText().isEmpty() && !artifactT.getText().isEmpty() && !versionT.getText().isEmpty();
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField artifactT;
    private javax.swing.JTextField groupT;
    private javax.swing.JPanel infoP;
    private javax.swing.JButton installB;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JTextField versionT;
    // End of variables declaration//GEN-END:variables
}
