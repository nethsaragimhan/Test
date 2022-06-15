FROM quay.io/souravkl11/raganork:multidevice

RUN git clone https://github.com/nethsaragimhan/Test /skl/Test
WORKDIR /skl/Test
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]
